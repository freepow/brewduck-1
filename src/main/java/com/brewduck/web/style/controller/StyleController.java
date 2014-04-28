package com.brewduck.web.style.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.Account;
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
     * 맥주 홉 메인
     * </pre>
     *
     * @param model Model
     * @return 맥주 홉 메인
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main(Model model) {
        logger.info("style index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "style/index";
    }

    /**
     * <pre>
     * 맥주 홉 상세 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 홉 상세.
     */
    @RequestMapping(value="{seq}/*", method=RequestMethod.GET)
    public String detail(Model model, @PathVariable("seq") String seq) {

        logger.info("Style seq : {}", seq);

        Style style = new Style();
        //style.setName(name);
        style.setSeq(seq);

        // 맥주 홉 상세 조회
        Style styleDetail = styleService.selectStyleDetail(style);

        //Boolean updateFlag = styleService.updateViewCount(style);


        model.addAttribute("StyleDetail", styleDetail);

        return "style/detail";
    }

    /**
     * <pre>
     * 맥주 스타일 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 홉 목록
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Style> StyleList(Model model, Style paramStyle) {
        logger.info("Style List searching.........");
        Style style = new Style();

        // 맥주 홉 목록 조회
        List<Style> list = styleService.selectStyleList(paramStyle);

        //logger.info(list.get(0).getTitleInUrl());
        //List<Style> list = null;
        //logger.info("Style List Size : {}", list.size());
        model.addAttribute("list", list);

        return list;
    }


}

