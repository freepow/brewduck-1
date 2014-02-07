package com.brewduck.web.style.dao;

import com.brewduck.web.domain.Style;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("styleDao")
public class StyleDaoImpl implements StyleDao {
    private static final Logger logger = LoggerFactory.getLogger(StyleDaoImpl.class);

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Style> getSelectList(Style style) {
        return sqlSession.selectList("Style.selectStyleList", style);
    }

    @Override
    public Style getSelectStyleView(Style style) {
        return sqlSession.selectOne("Style.selectStyleView", style);
    }

}