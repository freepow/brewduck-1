package com.brewduck.web.style.service;

import com.brewduck.web.domain.Style;
import com.brewduck.web.style.dao.StyleDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("styleService")
public class StyleServiceImpl implements StyleService {
    private static final Logger logger = LoggerFactory.getLogger(StyleServiceImpl.class);

    @Autowired
    private StyleDao styleDao;
    
    @Override
    public List<Style> getSelectList(Style style) {
        return styleDao.getSelectList(style);
    }

    @Override
    public Style selectStyleView(Style style) {
        return styleDao.getSelectStyleView(style);
    }
}
