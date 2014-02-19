package com.brewduck.web.fermentable.controller;

import com.brewduck.web.domain.Fermentable;
import com.brewduck.web.fermentable.service.FermentableService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <pre>
 * 맥주 발효 Controller.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Controller
@RequestMapping(value = "/fermentable")
public class FermentableController {
    private static final Logger logger = LoggerFactory.getLogger(FermentableController.class);

    /**
     * FermentableService Dependency Injection.
     */
    @Autowired
    private FermentableService fermentableService;


    /**
     * <pre>
     * 맥주 발효 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 발효 목록
     */
    @ResponseBody
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Fermentable> selectFermentableList(Model model) {
        logger.info("Fermentable List");
        Fermentable fermentable = new Fermentable();

        // 맥주 발효 목록 조회
        List<Fermentable> list = fermentableService.selectFermentableList(fermentable);
        logger.info("Fermentable List Size : {}", list.size());

        return list;
    }

    /**
     * <pre>
     * 맥주 발효 상세 조회.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 발효 영문명
     * @return 맥주 발효 상세.
     */
    @ResponseBody
    @RequestMapping(value = "/detail/{name}", method = RequestMethod.GET)
    public Fermentable selectFermentableDetail(Model model, @PathVariable("name") String name) {
        logger.info("Fermentable Name : {}", name);

        Fermentable fermentable = new Fermentable();
        fermentable.setName(name);

        // 맥주 발효 상세 조회
        Fermentable fermentableDetail = fermentableService.selectFermentableDetail(fermentable);

        return fermentableDetail;
    }

    /**
     * <pre>
     * 맥주 발효 저장.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 발효 영문명
     * @param paramFermentable 맥주 발효 VO
     * @return 맥주 발효 저장 여부
     */
    @ResponseBody
    @RequestMapping(value = "/insert/{name}", method = RequestMethod.POST)
    public Fermentable insertFermentable(Model model, @PathVariable("name") String name, @RequestBody Fermentable paramFermentable) {
        logger.info("Insert Fermentable : {}", paramFermentable);

        // 맥주 발효 저장
        Boolean insertFlag = fermentableService.insertFermentable(paramFermentable);

        // 맥주 발효 저장했는지 성공 세팅
        Fermentable returnFermentable = new Fermentable();
        returnFermentable.setName(name);
        returnFermentable.setInsertFlag(insertFlag);

        return returnFermentable;
    }
    /**
     * <pre>
     * 맥주 발효 수정.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 발효 영문명
     * @param paramFermentable 맥주 발효 VO
     * @return 맥주 발효 수정 여부
     */
    @ResponseBody
    @RequestMapping(value = "/update/{name}", method = RequestMethod.POST)
    public Fermentable updateFermentable(Model model, @PathVariable("name") String name, @RequestBody Fermentable paramFermentable) {
        logger.info("Update Fermentable : {}", paramFermentable);

        // 맥주 발효 수정
        Boolean updateFlag = fermentableService.updateFermentable(paramFermentable);

        // 맥주 발효 수정했는지 성공 세팅
        Fermentable returnFermentable = new Fermentable();
        returnFermentable.setName(name);
        returnFermentable.setUpdateFlag(updateFlag);

        return returnFermentable;
    }

    /**
     * <pre>
     * 맥주 발효 삭제.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 발효 영문명
     * @param paramFermentable 맥주 발효 VO
     * @return 맥주 발효 삭제 여부
     */
    @ResponseBody
    @RequestMapping(value = "/delete/{name}", method = RequestMethod.POST)
    public Fermentable deleteFermentable(Model model, @PathVariable("name") String name, @RequestBody Fermentable paramFermentable) {
        logger.info("Delete Fermentable : {}", paramFermentable);

        // 맥주 발효 삭제
        Boolean deleteFlag = fermentableService.deleteFermentable(paramFermentable);

        // 맥주 발효 삭제했는지 성공 세팅
        Fermentable returnFermentable = new Fermentable();
        returnFermentable.setName(name);
        returnFermentable.setDeleteFlag(deleteFlag);

        return returnFermentable;
    }
}

