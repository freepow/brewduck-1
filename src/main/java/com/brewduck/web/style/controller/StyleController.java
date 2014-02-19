package com.brewduck.web.style.controller;

import com.brewduck.web.domain.Style;
import com.brewduck.web.style.service.StyleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * <pre>
 * 맥주 스타일 Controller.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Controller
@RequestMapping(value = "/style")
public class StyleController {
    private static final Logger logger = LoggerFactory.getLogger(StyleController.class);

    /**
     * StyleService Dependency Injection.
     */
    @Autowired
    private StyleService styleService;


    /**
     * <pre>
     * 맥주 스타일 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 스타일 목록
     */
    @ResponseBody
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Style> selectStyleList(Model model) {
        logger.info("Style List");
        Style style = new Style();

        // 맥주 스타일 목록 조회
        List<Style> list = styleService.selectStyleList(style);
        logger.info("Style List Size : {}", list.size());

        return list;
    }

    /**
     * <pre>
     * 맥주 스타일 상세 조회.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 스타일 영문명
     * @return 맥주 스타일 상세.
     */
    @ResponseBody
    @RequestMapping(value = "/detail/{name}", method = RequestMethod.GET)
    public Style selectStyleDetail(Model model, @PathVariable("name") String name) {
        logger.info("Style Name : {}", name);

        Style style = new Style();
        style.setName(name);

        // 맥주 스타일 상세 조회
        Style styleDetail = styleService.selectStyleDetail(style);

        return styleDetail;
    }

    /**
     * <pre>
     * 맥주 스타일 저장.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 스타일 영문명
     * @param paramStyle 맥주 스타일 VO
     * @return 맥주 스타일 저장 여부
     */
    @ResponseBody
    @RequestMapping(value = "/insert/{name}", method = RequestMethod.POST)
    public Style insertStyle(Model model, @PathVariable("name") String name, @RequestBody Style paramStyle) {
        logger.info("Insert Style : {}", paramStyle);

        // 맥주 스타일 저장
        Boolean insertFlag = styleService.insertStyle(paramStyle);

        // 맥주 스타일 저장했는지 성공 세팅
        Style returnStyle = new Style();
        returnStyle.setName(name);
        returnStyle.setInsertFlag(insertFlag);

        return returnStyle;
    }
    /**
     * <pre>
     * 맥주 스타일 수정.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 스타일 영문명
     * @param paramStyle 맥주 스타일 VO
     * @return 맥주 스타일 수정 여부
     */
    @ResponseBody
    @RequestMapping(value = "/update/{name}", method = RequestMethod.POST)
    public Style updateStyle(Model model, @PathVariable("name") String name, @RequestBody Style paramStyle) {
        logger.info("Update Style : {}", paramStyle);

        // 맥주 스타일 수정
        Boolean updateFlag = styleService.updateStyle(paramStyle);

        // 맥주 스타일 수정했는지 성공 세팅
        Style returnStyle = new Style();
        returnStyle.setName(name);
        returnStyle.setUpdateFlag(updateFlag);

        return returnStyle;
    }

    /**
     * <pre>
     * 맥주 스타일 삭제.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 스타일 영문명
     * @param paramStyle 맥주 스타일 VO
     * @return 맥주 스타일 삭제 여부
     */
    @ResponseBody
    @RequestMapping(value = "/delete/{name}", method = RequestMethod.POST)
    public Style deleteStyle(Model model, @PathVariable("name") String name, @RequestBody Style paramStyle) {
        logger.info("Delete Style : {}", paramStyle);

        // 맥주 스타일 삭제
        Boolean deleteFlag = styleService.deleteStyle(paramStyle);

        // 맥주 스타일 삭제했는지 성공 세팅
        Style returnStyle = new Style();
        returnStyle.setName(name);
        returnStyle.setDeleteFlag(deleteFlag);

        return returnStyle;
    }

}

