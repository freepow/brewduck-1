package com.brewduck.web.style.service;

import com.brewduck.web.domain.Style;
import com.brewduck.web.style.dao.StyleDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <pre>
 * 맥주 스타일 Service 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Service("styleService")
public class StyleServiceImpl implements StyleService {
    private static final Logger logger = LoggerFactory.getLogger(StyleServiceImpl.class);

    /**
     * StyleDao Dependency Injection.
     */
    @Autowired
    private StyleDao styleDao;


    @Override
    public List<Style> selectStyleList(Style style) {
        return styleDao.selectStyleList(style);
    }

    @Override
    public Style selectStyleDetail(Style style) {
        return styleDao.selectStyleDetail(style);
    }

    @Override
    public Boolean insertStyle(Style style) {
        int insertCount = styleDao.insertStyle(style);

        return (insertCount == 1);
    }

    @Override
    public Boolean updateStyle(Style style) {
        int updateCount = styleDao.updateStyle(style);

        return (updateCount == 1);
    }

    @Override
    public Boolean deleteStyle(Style style) {
        int deleteCount = styleDao.deleteStyle(style);

        return (deleteCount == 1);
    }
}
