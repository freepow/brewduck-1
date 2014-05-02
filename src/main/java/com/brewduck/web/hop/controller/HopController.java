package com.brewduck.web.hop.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.common.service.BoardService;
import com.brewduck.web.common.service.CommonService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Board;
import com.brewduck.web.domain.Hop;
import com.brewduck.web.hop.service.HopService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;


/**
 * <pre>
 * 맥주 홉 Controller.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Controller
@RequestMapping(value = "/hop")
public class HopController {
    private static final Logger logger = LoggerFactory.getLogger(HopController.class);


    /**
     * HopService Dependency Injection.
     */
    @Autowired
    private HopService hopService;

    @Autowired
    private BoardService boardService;


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
        logger.info("Hop index");

        Account account = AuthenticationUtils.getUser();

        model.addAttribute("account", account);

        return "hop/index";
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
    public String detail(Model model, @PathVariable("seq") Integer seq) {

        logger.info("Hop seq : {}", seq);

        Hop hop = new Hop();
        hop.setSeq(seq);



        // 맥주 홉 상세 조회
        Hop hopDetail = hopService.selectHopDetail(hop);

        Boolean updateFlag = hopService.updateViewCount(hop);

        List<Hop> hopUsedForList = hopService.selectHopUsedForList(hop);
        List<Hop> hopAromaList = hopService.selectHopAromaList(hop);
        List<Hop> selectHopSubstitutesList = hopService.selectHopSubstitutesList(hop);

        logger.info("updateFlag : {}", updateFlag);
        logger.info("hopUsedForList List Size : {}", hopUsedForList.size());

        model.addAttribute("HopDetail", hopDetail);
        model.addAttribute("hopUsedForList", hopUsedForList);
        model.addAttribute("hopAromaList", hopAromaList);
        model.addAttribute("selectHopSubstitutesList", selectHopSubstitutesList);

        return "hop/detail";
    }

    /**
     * <pre>
     * 맥주 홉 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 홉 목록
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Hop> HopList(Model model, Hop paramHop) {
        logger.info("Hop List searching.........");
        Hop hop = new Hop();

        // 맥주 홉 목록 조회
        List<Hop> list = hopService.selectHopList(paramHop);

        logger.info(list.get(0).getTitleInUrl());
        //List<Hop> list = null;
        //logger.info("Hop List Size : {}", list.size());
        model.addAttribute("list", list);

        return list;
    }

    /**
     * <pre>
     * 맥주 홉 국가 별 갯수 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 홉 국가 별 갯수.
     */
    @ResponseBody
    @RequestMapping(value = "/countHopOrigin", method = RequestMethod.GET)
    public Hop countHopOrigin(Model model) {

        // 맥주 홉 국가 별 갯수 조회.
        Hop countHopOrigin = hopService.countHopOrigin();

        // model.addAttribute("Hop", Hop);
        // return "/Hop/HopView";

        return countHopOrigin;
    }

/*    *//**
     * <pre>
     * 아로마 조회 조건 리스트
     * </pre>
     *
     * @param model Model
     * @return 맥주 홉 국가 별 갯수.
     *//*
    @ResponseBody
    @RequestMapping(value = "/getAromaList", method = RequestMethod.GET)
    public List selectAromaList(Model model) {

        // 맥주 홉 국가 별 갯수 조회.
        List selectAromaList = hopService.selectAromaList();

        // model.addAttribute("Hop", Hop);
        // return "/Hop/HopView";

        return selectAromaList;
    }*/


    /**
     * <pre>
     * 맥주 홉 저장.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 홉 영문명
     * @param paramHop 맥주 홉 VO
     * @return 맥주 홉 저장 여부
     */
    @ResponseBody
    @RequestMapping(value = "/insert/{name}", method = RequestMethod.POST)
    public Hop insertHop(Model model, @PathVariable("name") String name, @RequestBody Hop paramHop) {
        logger.info("Insert Hop : {}", paramHop);

        // 맥주 홉 저장
        Boolean insertFlag = hopService.insertHop(paramHop);

        // 맥주 홉 저장했는지 성공 세팅
        Hop returnHop = new Hop();
        returnHop.setName(name);
        returnHop.setInsertFlag(insertFlag);

        return returnHop;
    }


    /**
     * <pre>
     * 맥주 홉 수정.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 홉 영문명
     * @param paramHop 맥주 홉 VO
     * @return 맥주 홉 수정 여부
     */
    @ResponseBody
    @RequestMapping(value = "/update/{name}", method = RequestMethod.POST)
    public Hop updateHop(Model model, @PathVariable("name") String name, @RequestBody Hop paramHop) {
        logger.info("Update Hop : {}", paramHop);

        // 맥주 홉 수정
        Boolean updateFlag = hopService.updateHop(paramHop);

        // 맥주 홉 수정했는지 성공 세팅
        Hop returnHop = new Hop();
        returnHop.setName(name);
        returnHop.setUpdateFlag(updateFlag);

        return returnHop;
    }

    /**
     * <pre>
     * 맥주 홉 삭제.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 홉 영문명
     * @param paramHop 맥주 홉 VO
     * @return 맥주 홉 삭제 여부
     */
    @ResponseBody
    @RequestMapping(value = "/delete/{name}", method = RequestMethod.POST)
    public Hop deleteHop(Model model, @PathVariable("name") String name, @RequestBody Hop paramHop) {
        logger.info("Delete Hop : {}", paramHop);

        // 맥주 홉 삭제
        Boolean deleteFlag = hopService.deleteHop(paramHop);

        // 맥주 홉 삭제했는지 성공 세팅
        Hop returnHop = new Hop();
        returnHop.setName(name);
        returnHop.setDeleteFlag(deleteFlag);

        return returnHop;
    }


}

