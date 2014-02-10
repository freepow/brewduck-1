package com.brewduck.web.yeast.service;

import com.brewduck.web.yeast.dao.YeastDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("yeastService")
public class YeastServiceImpl implements YeastService {
    private static final Logger logger = LoggerFactory.getLogger(YeastServiceImpl.class);

    @Autowired
    private YeastDao yeastDao;

}
