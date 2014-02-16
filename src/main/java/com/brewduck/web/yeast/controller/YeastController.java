package com.brewduck.web.yeast.controller;

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
     * 맥주 이스트 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 이스트 목록
     */
    @ResponseBody
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Yeast> selectYeastList(Model model) {
        logger.info("Yeast List");
        Yeast yeast = new Yeast();

        // 맥주 이스트 목록 조회
        List<Yeast> list = yeastService.selectYeastList(yeast);
        logger.info("Yeast List Size : {}", list.size());

        return list;
    }

    /**
     * <pre>
     * 맥주 이스트 상세 조회.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 이스트 영문명
     * @return 맥주 이스트 상세.
     */
    @ResponseBody
    @RequestMapping(value = "/detail/{name}", method = RequestMethod.GET)
    public Yeast selectYeastDetail(Model model, @PathVariable("name") String name) {
        logger.info("Yeast Name : {}", name);

        Yeast yeast = new Yeast();
        yeast.setName(name);

        // 맥주 이스트 상세 조회
        Yeast yeastDetail = yeastService.selectYeastDetail(yeast);

        return yeastDetail;
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

