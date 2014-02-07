/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.common.service;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.java6.auth.oauth2.FileCredentialStore;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import com.google.api.client.googleapis.media.MediaHttpUploaderProgressListener;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.InputStreamContent;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.youtube.YouTube;
import com.google.api.services.youtube.model.Video;
import com.google.api.services.youtube.model.VideoSnippet;
import com.google.api.services.youtube.model.VideoStatus;
import com.google.common.collect.Lists;
import com.brewduck.framework.youtube.UploadVideo;
import com.brewduck.web.common.dao.CommonDao;
import com.brewduck.web.domain.Common;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
@Service("commonService")
public class CommonServiceImpl implements CommonService {
    Logger logger = LoggerFactory.getLogger(this.getClass());

    /** Global instance of the HTTP transport. */
    private static final HttpTransport HTTP_TRANSPORT = new NetHttpTransport();

    /** Global instance of the JSON factory. */
    private static final JsonFactory JSON_FACTORY = new JacksonFactory();

    /** Global instance of Youtube object to make all API requests. */
    private static YouTube youtube;

    /* Global instance of the format used for the video being uploaded (MIME type). */
    private static String VIDEO_FILE_FORMAT = "video/*";

    @Autowired
    private CommonDao commonDao;

    public String systemDate() throws RuntimeException {
        long time = System.currentTimeMillis();
        SimpleDateFormat dayTime = new SimpleDateFormat("yyyy-mm-dd-hh:mm:ss");
        String systemDate = dayTime.format(new Date(time));
        return systemDate;
    }

    private static File getVideoFromUser() throws IOException {
        File[] listOfVideoFiles = getLocalVideoFiles();
        return getUserChoice(listOfVideoFiles);
    }

    /**
     * Gets an array of videos in the current directory.
     */
    private static File[] getLocalVideoFiles() throws IOException {

        File currentDirectory = new File(".");
        System.out.println("Video files from " + currentDirectory.getAbsolutePath() + ":");

        // Filters out video files. This list of video extensions is not comprehensive.
        FilenameFilter videoFilter = new FilenameFilter() {
            public boolean accept(File dir, String name) {
                String lowercaseName = name.toLowerCase();
                if (lowercaseName.endsWith(".webm") || lowercaseName.endsWith(".flv")
                        || lowercaseName.endsWith(".f4v") || lowercaseName.endsWith(".mov") || lowercaseName.endsWith(".avi")
                        || lowercaseName.endsWith(".mp4")) {
                    return true;
                } else {
                    return false;
                }
            }
        };
        return currentDirectory.listFiles(videoFilter);
    }

    /**
     * Outputs video file options to the user, records user selection, and returns the video (File
     * object).
     *
     * @param videoFiles Array of video File objects
     */
    private static File getUserChoice(File videoFiles[]) throws IOException {

        if (videoFiles.length < 1) {
            throw new IllegalArgumentException("No video files in this directory.");
        }

        for (int i = 0; i < videoFiles.length; i++) {
            System.out.println(" " + i + " = " + videoFiles[i].getName());
        }

        BufferedReader bReader = new BufferedReader(new InputStreamReader(System.in));
        String inputChoice;

        do {
            System.out.print("Choose the number of the video file you want to upload: ");
            inputChoice = bReader.readLine();
        } while (!isValidIntegerSelection(inputChoice, videoFiles.length));

        return videoFiles[Integer.parseInt(inputChoice)];
    }

    /**
     * Checks if string contains a valid, positive integer that is less than max. Please note, I am
     * not testing the upper limit of an integer (2,147,483,647). I just go up to 999,999,999.
     *
     * @param input String to test.
     * @param max Integer must be less then this Maximum number.
     */
    public static boolean isValidIntegerSelection(String input, int max) {
        if (input.length() > 9) return false;

        boolean validNumber = false;
        // Only accepts positive numbers of up to 9 numbers.
        Pattern intsOnly = Pattern.compile("^\\d{1,9}$");
        Matcher makeMatch = intsOnly.matcher(input);

        if (makeMatch.find()) {
            int number = Integer.parseInt(makeMatch.group());
            if ((number >= 0) && (number < max)) {
                validNumber = true;
            }
        }
        return validNumber;
    }

    private static Credential authorize(List<String> scopes) throws Exception {

        // Load client secrets.
        GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(
                JSON_FACTORY, UploadVideo.class.getResourceAsStream("/client_secrets.json"));

        // Checks that the defaults have been replaced (Default = "Enter X here").
        if (clientSecrets.getDetails().getClientId().startsWith("Enter")
                || clientSecrets.getDetails().getClientSecret().startsWith("Enter ")) {
            System.out.println(
                    "Enter Client ID and Secret from https://code.google.com/apis/console/?api=youtube"
                            + "into youtube-cmdline-uploadvideo-sample/src/main/resources/client_secrets.json");
            System.exit(1);
        }

        // Set up file credential store.
        FileCredentialStore credentialStore = new FileCredentialStore(
                new File(System.getProperty("user.home"), ".credentials/youtube-api-uploadvideo.json"),
                JSON_FACTORY);

        // Set up authorization code flow.
        GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
                HTTP_TRANSPORT, JSON_FACTORY, clientSecrets, scopes).setCredentialStore(credentialStore)
                .build();

        // Build the local server and bind it to port 9000
        LocalServerReceiver localReceiver = new LocalServerReceiver.Builder().setPort(80).build();

        // Authorize.
        return new AuthorizationCodeInstalledApp(flow, localReceiver).authorize("user");
    }

    public void uploadVideo(String filePath) throws RuntimeException {
        List<String> scopes = Lists.newArrayList("https://www.googleapis.com/auth/youtube.upload");

        try {
            // Authorization.
            Credential credential = authorize(scopes);

            // YouTube object used to make all API requests.
            youtube = new YouTube.Builder(HTTP_TRANSPORT, JSON_FACTORY, credential).setApplicationName(
                    "youtube-cmdline-uploadvideo-sample").build();

            // We get the user selected local video file to upload.
            //File videoFile = getVideoFromUser();
            File videoFile = new File(filePath);

            // Add extra information to the video before uploading.
            Video videoObjectDefiningMetadata = new Video();

      /*
       * Set the video to public, so it is available to everyone (what most people want). This is
       * actually the default, but I wanted you to see what it looked like in case you need to set
       * it to "unlisted" or "private" via API.
       */
            VideoStatus status = new VideoStatus();
            status.setPrivacyStatus("public");
            videoObjectDefiningMetadata.setStatus(status);

            // We set a majority of the metadata with the VideoSnippet object.
            VideoSnippet snippet = new VideoSnippet();

      /*
       * The Calendar instance is used to create a unique name and description for test purposes, so
       * you can see multiple files being uploaded. You will want to remove this from your project
       * and use your own standard names.
       */

            String desc = "나누다뮤직은 뮤지션들의 재능을 거래하는 세계에서 가장 큰 플랫폼입니다. -- ";
            desc += "http://www.nanooda.com";

            Calendar cal = Calendar.getInstance();
            snippet.setTitle("테스트 제목");
            snippet.setDescription(desc);

            // Set your keywords.
            List<String> tags = new ArrayList<String>();
            tags.add("나누다뮤직");
            tags.add("nanoodamusic");
            tags.add("공연");
            tags.add("기타");
            tags.add("연주");
            tags.add("축가");
            tags.add("가수");
            tags.add("음악재능");
            tags.add("밴드");
            tags.add("오디션");
            tags.add("콘서트");
            tags.add("k-pop");

            snippet.setTags(tags);

            // Set completed snippet to the video object.
            videoObjectDefiningMetadata.setSnippet(snippet);

            InputStreamContent mediaContent = new InputStreamContent(
                    VIDEO_FILE_FORMAT, new BufferedInputStream(new FileInputStream(videoFile)));
            mediaContent.setLength(videoFile.length());

      /*
       * The upload command includes: 1. Information we want returned after file is successfully
       * uploaded. 2. Metadata we want associated with the uploaded video. 3. Video file itself.
       */
            YouTube.Videos.Insert videoInsert = youtube.videos()
                    .insert("snippet,statistics,status", videoObjectDefiningMetadata, mediaContent);

            // Set the upload type and add event listener.
            MediaHttpUploader uploader = videoInsert.getMediaHttpUploader();

      /*
       * Sets whether direct media upload is enabled or disabled. True = whole media content is
       * uploaded in a single request. False (default) = resumable media upload protocol to upload
       * in data chunks.
       */
            uploader.setDirectUploadEnabled(false);

            MediaHttpUploaderProgressListener progressListener = new MediaHttpUploaderProgressListener() {
                public void progressChanged(MediaHttpUploader uploader) throws IOException {
                    switch (uploader.getUploadState()) {
                        case INITIATION_STARTED:
                            System.out.println("Initiation Started");
                            break;
                        case INITIATION_COMPLETE:
                            System.out.println("Initiation Completed");
                            break;
                        case MEDIA_IN_PROGRESS:
                            System.out.println("Upload in progress");
                            System.out.println("Upload percentage: " + uploader.getProgress());
                            break;
                        case MEDIA_COMPLETE:
                            System.out.println("Upload Completed!");
                            break;
                        case NOT_STARTED:
                            System.out.println("Upload Not Started!");
                            break;
                    }
                }
            };
            uploader.setProgressListener(progressListener);

            // Execute upload.
            Video returnedVideo = videoInsert.execute();

            // Print out returned results.
            System.out.println("\n================== Returned Video ==================\n");
            System.out.println("  - Id: " + returnedVideo.getId());
            System.out.println("  - Title: " + returnedVideo.getSnippet().getTitle());
            System.out.println("  - Tags: " + returnedVideo.getSnippet().getTags());
            System.out.println("  - Privacy Status: " + returnedVideo.getStatus().getPrivacyStatus());
            System.out.println("  - Video Count: " + returnedVideo.getStatistics().getViewCount());

        } catch (IOException e) {
            System.err.println("IOException: " + e.getMessage());
            e.printStackTrace();
        } catch (Throwable t) {
            System.err.println("Throwable: " + t.getMessage());
            t.printStackTrace();
        }
    }

    @Override
    public int insertImage(Common common) throws RuntimeException {
        return commonDao.insertImage(common);
    }

    @Override
    public int selectImageId() throws RuntimeException {
        return commonDao.selectImageId();
    }

    @Override
    public int selectMovieId() throws RuntimeException {
        return commonDao.selectMovieId();
    }

    @Override
    public List<Common> selectGenderList() throws RuntimeException {
        return commonDao.selectGenderList();
    }

    @Override
    public List<Common> selectMonthList() throws RuntimeException {
        return commonDao.selectMonthList();
    }

    @Override
    public List<Common> selectMainCategoryList() throws RuntimeException {
        return commonDao.selectMainCategoryList();
    }

    @Override
    public List<Common> selectSubCategoryList(Common common) throws RuntimeException {
        return commonDao.selectSubCategoryList(common);
    }

    @Override
    public List<Common> selectMainAreaList() throws RuntimeException {
        return commonDao.selectMainAreaList();
    }

    @Override
    public List<Common> selectSubAreaList(Common common) throws RuntimeException {
        return commonDao.selectSubAreaList(common);
    }

    @Override
    public Common selectMainCategory(Common common) throws RuntimeException {
        return commonDao.selectMainCategory(common);
    }

    @Override
    public Common selectSubCategory(Common common) throws RuntimeException {
        return commonDao.selectSubCategory(common);
    }
}
