package com.brewduck.web.fermentable.service;

import com.brewduck.web.domain.Style;
import com.brewduck.web.fermentable.dao.FermentableDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("fermentableService")
public class FermentableServiceImpl implements FermentableService {
    private static final Logger logger = LoggerFactory.getLogger(FermentableServiceImpl.class);

    @Autowired
    private FermentableDao styleDao;

}
