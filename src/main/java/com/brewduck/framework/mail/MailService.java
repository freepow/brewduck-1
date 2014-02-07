package com.brewduck.framework.mail;

import com.brewduck.framework.crypto.SimpleCrypto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;


/**
 * 이메일 발송
 *
 * User: JAEGER
 * Date: 13. 8. 19
 * Time: 오후 1:00
 */
public class MailService {
    Logger logger = LoggerFactory.getLogger(this.getClass());

    public StringBuffer signUpEmailForm(String authKey) throws  RuntimeException {
        StringBuffer html = new StringBuffer();
        html.append("<!doctype html>");
        html.append("<head>");
        html.append("<meta charset='UTF-8'>");
        html.append("<meta name='Generator' content='EditPlus®'>");
        html.append("<meta name='Author' content=''>");
        html.append("<meta name='Keywords' content=''>");
        html.append("<meta name='Description' content=''>");
        html.append("<title>Document</title>");
        html.append("</head>");
        html.append("<body>");
        html.append("<table style='table-layout:fixed;' border='0' cellspacing='0' cellpadding='0' width='100%'>");
        html.append("<tbody>");
        html.append("<tr>");
        html.append("<td>");
        html.append("<table border='0' cellspacing='0' cellpadding='10' width='600' align='center'>");
        html.append("<tbody>");
        html.append("<tr>");
        html.append("<td height='80' align='center'><a href='#' target='_blank'><img src='http://nanooda01.cafe24.com/resources/images/logo_email.png' border='0' alt='NanoodaMusic' width='187' height='72'></a></td>");
        html.append("</tr>");
        html.append("<tr>");
        html.append("<td bgcolor='#FFFFFF'>");
        html.append("<!-- 가입환영&이메일인증 메일 -->");
        html.append("<table style='border-bottom:#d0cdcd;' border='0' cellspacing='0' cellpadding='0' width='485' align='center'>");
        html.append("<tbody>");
        html.append("<tr>");
        html.append("<td style='font-family:'나눔고딕', NanumGothic, NanumGothicWeb, Helvetica, sans-serif;font-size:12px;color:#5e5d5d;line-height:18px;' height='30'>&nbsp;</td>");
        html.append("</tr>");
        html.append("<tr>");
        html.append("<td style='font-family:'나눔고딕', NanumGothic, NanumGothicWeb, Helvetica, sans-serif;font-size:13px;color:#8a8a8a;line-height:20px;'>");
        html.append("<p style='font-size:18px;line-height:21px;color:#222222;'>브루덕 회원이 되신 것을 진심으로 환영합니다.</p>");
        html.append("<p style=''>아래의 이메일인증을 클릭하여 주세요.</p>");
        html.append("<p style='text-align:center; padding-top:20px;'><a href='http://nanooda01.cafe24.com/account/activation/" + authKey);
        html.append("' target='_blank' style='background:#ff6126;border-radius:5px;-moz-border-radius:5px;-webkit-border-radius:5px; padding:10px 20px; color:#fff;text-decoration:none;font-weight:bold;'>이메일 인증</a></p>");
        html.append("</td>");
        html.append("</tr>");
        html.append("</tbody>");
        html.append("</table>");
        html.append("<table border='0' cellspacing='0' cellpadding='0' width='515' align='center'>");
        html.append("<tbody>");
        html.append("<tr>");
        html.append("<td><br /></td>");
        html.append("</tr>");
        html.append("<tr>");
        html.append("<td style='border-bottom:1px solid #d0cdcd;'>&nbsp;</td>");
        html.append("</tr>");
        html.append("<tr>");
        html.append("<td><br /></td>");
        html.append("</tr>");
        html.append("</tbody>");
        html.append("</table>");
        html.append("<table border='0' cellspacing='0' cellpadding='0' width='485' align='center'>");
        html.append("<tbody>");
        html.append("<tr>");
        html.append("<td style='font-family:'나눔고딕', NanumGothic, NanumGothicWeb, Helvetica, sans-serif;font-size:13px;color:#8a8a8a;line-height:20px;text-align:left;'>");
        html.append("<p>감사합니다.<br />브루덕팀</p>");
        html.append("</td>");
        html.append("</tr>");
        html.append("</tbody>");
        html.append("</table>");
        html.append("<table border='0' cellspacing='0' cellpadding='0' width='515' align='center'>");
        html.append("<tbody>");
        html.append("<tr>");
        html.append("<td>&nbsp;</td>");
        html.append("</tr>");
        html.append("</tbody>");
        html.append("</table>");
        html.append("</td>");
        html.append("</tr>");
        html.append("</tbody>");
        html.append("</table>");
        html.append("<table border='0' cellspacing='0' cellpadding='0' width='600' align='center'>");
        html.append("<tbody>");
        html.append("<tr>");
        html.append("<td style='font-family:'나눔고딕', NanumGothic, NanumGothicWeb, Helvetica, sans-serif;font-size:11px;line-height:18px;color:#8a8a8a;text-align:center;padding:0;'>");
        html.append("<p style=''>본 메일은 수신을 동의한 브루덕 회원에게 발송됩니다.<br />");
        html.append("        발신전용이므로 문의사항은 <a href='#'>고객센터</a>를 이용해주세요.<br />");
        html.append("©NANOODA, Inc.</p>");
        html.append("</td> ");
        html.append("</tr> ");
        html.append("<tr>  ");
        html.append("<td>  ");
        html.append("<p>&nbsp;</p> ");
        html.append("</td> ");
        html.append("</tr> ");
        html.append("</tbody> ");
        html.append("</table> ");
        html.append("</td> ");
        html.append("</tr> ");
        html.append("</tbody> ");
        html.append("</table> ");
        html.append("</body>  ");
        html.append("</html>  ");

        return html;
    }

    /**
     * 이메일 전송 보내기
     *
     * @param receiveEmail
     * @param sendTitle
     * @param sendContent
     * @return
     */
    public boolean sendMail(String receiveEmail,
                            String sendTitle,
                            String authKey) {
        // TODO : 향후에 외부 설정으로 빠져야 함.
        // TODO : 향후에 외부 설정으로 빠져야 함.
        String smtpHost = "smtp.gmail.com";
        String smtpPort = "587";    // TLS 포트 번호
        String password = "glasowk1225";
        String sendEmail = "help@brewduck.com";
        String sendPassword = "D90A6EF4755C4CF1C6BDFF70F15F61EC";

        String charset = "UTF-8";

        boolean result = false;

        String content = signUpEmailForm(authKey).toString();

        // TODO : GMAIL 2단계 인증 설정시 이메일 보내기 실패
        try {
            // TLS 방식으로 이메일 전송
            result = sendMailTLS(
                            smtpHost,
                            smtpPort,
                            sendEmail,
                            SimpleCrypto.decrypt(SimpleCrypto.seed, sendPassword),
                            receiveEmail,
                            sendTitle,
                            content,
                            charset
                        );
            logger.debug("TLS 방식의 이메일 전송 결과 : " + result);

            // 이메일 전송 실패시 SSL 방식으로 이메일 전송
            if ( ! result) {
                smtpPort = "465";    // SSL 포트 번호

                result = sendMailSSL(
                                smtpHost,
                                smtpPort,
                                sendEmail,
                                SimpleCrypto.decrypt(SimpleCrypto.seed, sendPassword),
                                receiveEmail,
                                sendTitle,
                                content,
                                charset
                            );
                logger.debug("SSL 방식의 이메일 전송 결과 : " + result);
            }
        } catch (Exception e) {
            result = false;
        }

        return result;
    }

    /**
     * SSL 방식의 이메일 보내기
     *
     * @param host
     * @param port
     * @param hostMailId
     * @param hostPassword
     * @param targetId
     * @param title
     * @param content
     * @param charset
     * @return
     */
    private boolean sendMailSSL(String host,
                                String port,
                                String hostMailId,
                                String hostPassword,
                                String targetId,
                                String title,
                                String content,
                                String charset) {
        boolean result = false;
        final String username = hostMailId;
        final String password = hostPassword;

        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.socketFactory.port", port);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.debug", "true");
        props.put("mail.smtp.port", port);

        Session session = Session.getDefaultInstance(
                                    props,
                                    new Authenticator() {
                                        protected PasswordAuthentication getPasswordAuthentication() {
                                            return new PasswordAuthentication(username, password);
                                        }
                                    }
                                );

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(targetId));
            message.setSubject(title);
            message.setText(content);
            message.setContent(content, "text/html; charset=" + charset);
            message.setHeader("Content-Transfer-Encoding", "quoted-printable");

            logger.debug("### SSL 메일 전송 시작");
            Transport.send(message);
            logger.debug("### SSL 메일 전송 종료");

            result = true;
        } catch (MessagingException e) {
            logger.error("이메일 전송(SSL 방식) 실패하였습니다.", e);
            return result;
        }

        return result;
    }

    /**
     * TLS 방식의 이메일 보내기
     *
     * @param host
     * @param port
     * @param hostMailId
     * @param hostPassword
     * @param targetId
     * @param title
     * @param content
     * @param charset
     * @return
     */
    private boolean sendMailTLS (String host,
                                 String port,
                                 String hostMailId,
                                 String hostPassword,
                                 String targetId,
                                 String title,
                                 String content,
                                 String charset)  {
        boolean result = false;
        final String username = hostMailId;
        final String password = hostPassword;

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.debug", "true");
        props.put("mail.smtp.port", port);

        Session session = Session.getDefaultInstance(
                props,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                }
        );

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(targetId));
            message.setSubject(title);
            message.setText(content);
            message.setContent(content, "text/html; charset=" + charset);
            message.setHeader("Content-Transfer-Encoding", "quoted-printable");

            logger.debug("### TLS 메일 전송 시작");
            Transport.send(message);
            logger.debug("### TLS 메일 전송 종료");

            result = true;
        } catch (MessagingException e) {
            logger.error("이메일 전송(TLS 방식) 실패하였습니다.", e);
            return result;
        }

        return result;
    }

}