package com.brewduck.web.yeast.dao;

import com.brewduck.web.domain.Yeast;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <pre>
 * 맥주 이스트 DAO 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.16
 */
@Repository("yeastDao")
public class YeastDaoImpl implements YeastDao {
    private static final Logger LOGGER = LoggerFactory.getLogger(YeastDaoImpl.class);

    /**
     * Mybatis SQL Session Dependency Injection.
     */
    @Autowired
    private SqlSession sqlSession;


    @Override
    public List<Yeast> selectYeastList(Yeast yeast) {
        return sqlSession.selectList("Yeast.selectYeastList", yeast);
    }

    @Override
    public List<Yeast> selectRecipeYeastList(String name) {
        return sqlSession.selectList("Yeast.selectRecipeYeastList", name);
    }

    @Override
    public Yeast selectYeastDetail(Yeast yeast) {
        return sqlSession.selectOne("Yeast.selectYeastDetail", yeast);
    }

    @Override
    public Integer insertYeast(Yeast yeast) {
        return sqlSession.update("Yeast.insertYeast", yeast);
    }

    @Override
    public Integer updateYeast(Yeast yeast) {
        return sqlSession.update("Yeast.updateYeast", yeast);
    }

    @Override
    public Integer deleteYeast(Yeast yeast) {
        return sqlSession.update("Yeast.deleteYeast", yeast);
    }
    
}