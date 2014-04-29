package com.brewduck.web.common.controller;

import com.brewduck.web.common.service.CodeService;
import com.brewduck.web.domain.Code;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "common/code")
public class BoardController {

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

    @Autowired
    private CodeService codeService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {

        Code code = new Code();

        List<Code> codeList = codeService.getSelectCodeList(code);
        model.addAttribute("list", codeList);

        return "common/code/list";
    }
}


