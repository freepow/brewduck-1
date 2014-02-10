package com.brewduck.web.fermentable.controller;

import com.brewduck.web.domain.Style;
import com.brewduck.web.fermentable.service.FermentableService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * The Class CompanyController.
 */
@Controller
@RequestMapping(value = "/fermentable")
public class FermentableController {

    /** The Constant logger. */
    private static final Logger logger = LoggerFactory
            .getLogger(FermentableController.class);

    @Autowired
    private FermentableService fermentableService;



}

