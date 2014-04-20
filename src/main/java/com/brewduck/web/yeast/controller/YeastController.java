package com.brewduck.web.yeast.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Yeast;
import com.brewduck.web.yeast.service.YeastService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <pre>
 * 맥주 이스트 Controller.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.16
 */
@Controller
@RequestMapping(value = "/yeast")
public class YeastController {
    private static final Logger logger = LoggerFactory.getLogger(YeastController.class);

    /**
     * YeastService Dependency Injection.
     */
    @Autowired
    private YeastService yeastService;


    /**
     * <pre>
     * 맥주 홉 메인
     * </pre>
     *
     * @param model Model
     * @return 맥주 홉 메인
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main(Model model) {
        logger.info("Yeast index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "yeast/index";
    }

    /**
     * <pre>
     * 맥주 이스트 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 이스트 목록
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Yeast> YeastList(Model model, Yeast paramYeast) {
        logger.info("Yeast List");
        Yeast yeast = new Yeast();

        // 맥주 이스트 목록 조회
        List<Yeast> list = yeastService.selectYeastList(paramYeast);
        logger.info("Yeast List Size : {}", list.size());
        model.addAttribute("list", list);

        return list;
    }

    /**
     * <pre>
     * 맥주 이스트 상세 조회.
     * </pre>
     *
     *
     * @param model Model
     * @param name 맥주 이스트 영문명
     * @return 맥주 이스트 상세.
     */
    @RequestMapping(value = "/detail/{seq}", method = RequestMethod.GET)
    public String detail(Model model, @PathVariable("seq") String seq) {
        logger.info("Yeast seq : {}", seq);

        Yeast yeast = new Yeast();
        yeast.setSeq(seq);

        // 맥주 이스트 상세 조회
        Yeast yeastDetail = yeastService.selectYeastDetail(yeast);

        model.addAttribute("YeastDetail", yeastDetail);

        return "yeast/detail";
    }


    /**
     * <pre>
     * 맥주 이스트 타입 별 갯수 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 이스트 타입 별 갯수.
     */
    @ResponseBody
    @RequestMapping(value = "/countYeastType", method = RequestMethod.GET)
    public Yeast countYeastType(Model model) {

        // 맥주 이스트 타입 별 갯수 조회.
        Yeast countYeastType = yeastService.countYeastType();

        // model.addAttribute("Hop", Hop);
        // return "/Hop/HopView";

        return countYeastType;
    }
    /**
     * <pre>
     * 맥주 이스트 저장.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 이스트 영문명
     * @param paramYeast 맥주 이스트 VO
     * @return 맥주 이스트 저장 여부
     */
    @ResponseBody
    @RequestMapping(value = "/insert/{name}", method = RequestMethod.POST)
    public Yeast insertYeast(Model model, @PathVariable("name") String name, @RequestBody Yeast paramYeast) {
        logger.info("Insert Yeast : {}", paramYeast);

        // 맥주 이스트 저장
        Boolean insertFlag = yeastService.insertYeast(paramYeast);

        // 맥주 이스트 저장했는지 성공 세팅
        Yeast returnYeast = new Yeast();
        returnYeast.setName(name);
        returnYeast.setInsertFlag(insertFlag);

        return returnYeast;
    }
    /**
     * <pre>
     * 맥주 이스트 수정.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 이스트 영문명
     * @param paramYeast 맥주 이스트 VO
     * @return 맥주 이스트 수정 여부
     */
    @ResponseBody
    @RequestMapping(value = "/update/{name}", method = RequestMethod.POST)
    public Yeast updateYeast(Model model, @PathVariable("name") String name, @RequestBody Yeast paramYeast) {
        logger.info("Update Yeast : {}", paramYeast);

        // 맥주 이스트 수정
        Boolean updateFlag = yeastService.updateYeast(paramYeast);

        // 맥주 이스트 수정했는지 성공 세팅
        Yeast returnYeast = new Yeast();
        returnYeast.setName(name);
        returnYeast.setUpdateFlag(updateFlag);

        return returnYeast;
    }

    /**
     * <pre>
     * 맥주 이스트 삭제.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 이스트 영문명
     * @param paramYeast 맥주 이스트 VO
     * @return 맥주 이스트 삭제 여부
     */
    @ResponseBody
    @RequestMapping(value = "/delete/{name}", method = RequestMethod.POST)
    public Yeast deleteYeast(Model model, @PathVariable("name") String name, @RequestBody Yeast paramYeast) {
        logger.info("Delete Yeast : {}", paramYeast);

        // 맥주 이스트 삭제
        Boolean deleteFlag = yeastService.deleteYeast(paramYeast);

        // 맥주 이스트 삭제했는지 성공 세팅
        Yeast returnYeast = new Yeast();
        returnYeast.setName(name);
        returnYeast.setDeleteFlag(deleteFlag);

        return returnYeast;
    }

}

