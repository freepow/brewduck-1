package com.brewduck.web.hop.controller;

import com.brewduck.web.hop.service.HopService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * The Class CompanyController.
 */
@Controller
@RequestMapping(value = "/hop")
public class HopController {

    /** The Constant logger. */
    private static final Logger logger = LoggerFactory
            .getLogger(HopController.class);

    @Autowired
    private HopService hopService;



}

