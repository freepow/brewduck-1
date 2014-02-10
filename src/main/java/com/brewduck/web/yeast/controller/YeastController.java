package com.brewduck.web.yeast.controller;

import com.brewduck.web.yeast.service.YeastService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * The Class CompanyController.
 */
@Controller
@RequestMapping(value = "/yeast")
public class YeastController {

    /** The Constant logger. */
    private static final Logger logger = LoggerFactory
            .getLogger(YeastController.class);

    @Autowired
    private YeastService yeastService;



}

