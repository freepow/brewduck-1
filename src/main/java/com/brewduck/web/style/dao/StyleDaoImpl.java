package com.brewduck.web.style.dao;

import com.brewduck.web.domain.Style;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * <pre>
 * 맥주 스타일 DAO 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Repository("styleDao")
public class StyleDaoImpl implements StyleDao {
    private static final Logger logger = LoggerFactory.getLogger(StyleDaoImpl.class);

    /**
     * Mybatis SQL Session Dependency Injection.
     */
    @Autowired
    private SqlSession sqlSession;


    @Override
    public List<Style> selectStyleList(Style style) {
        return sqlSession.selectList("Style.selectStyleList", style);
    }

    @Override
    public Style selectStyleDetail(Style style) {
        return sqlSession.selectOne("Style.selectStyleDetail", style);
    }

    @Override
    public Integer insertStyle(Style style) {
        return sqlSession.update("Style.insertStyle", style);
    }

    @Override
    public Integer updateStyle(Style style) {
        return sqlSession.update("Style.updateStyle", style);
    }

    @Override
    public Integer deleteStyle(Style style) {
        return sqlSession.update("Style.deleteStyle", style);
    }

}