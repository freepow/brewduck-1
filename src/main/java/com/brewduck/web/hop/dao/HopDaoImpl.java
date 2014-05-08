package com.brewduck.web.hop.dao;

import com.brewduck.web.domain.Hop;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * <pre>
 * 맥주 홉 DAO 구현체.
 * </pre>
 *
 * @author  chacha
 * @version 1.0, 2014.02.16
 */
@Repository("HopDao")
public class HopDaoImpl implements HopDao {
    private static final Logger LOGGER = LoggerFactory.getLogger(HopDaoImpl.class);

    /**
     * Mybatis SQL Session Dependency Injection.
     */
    @Autowired
    private SqlSession sqlSession;


    @Override
    public List<Hop> selectHopList(Hop hop) {
        return sqlSession.selectList("Hop.selectHopList", hop);
    }

    @Override
    public List<Hop> selectRecipeHopList(String name) {
        return sqlSession.selectList("Hop.selectRecipeHopList", name);
    }

    @Override
    public List<Hop> selectHopUsedForList(Hop hop) {
        return sqlSession.selectList("Hop.selectHopUsedForList", hop);
    }

    @Override
    public List<Hop> selectHopSubstitutesList(Hop hop) {
        return sqlSession.selectList("Hop.selectHopSubstitutesList", hop);
    }

    @Override
    public List<Hop> selectAromaList() {
        return sqlSession.selectList("Hop.selectAromaList");
    }

    @Override
    public List<Hop> selectHopAromaList(Hop hop) {
        return sqlSession.selectList("Hop.selectHopAromaList", hop);
    }


    @Override
    public Hop selectHopDetail(Hop hop) {
        return sqlSession.selectOne("Hop.selectHopDetail", hop);
    }

    @Override
    public Hop selectRandomHop() {
        return sqlSession.selectOne("Hop.selectRandomHop");
    }

    @Override
    public Hop countHopOrigin() {
        return sqlSession.selectOne("Hop.countHopOrigin");
    }

    @Override
    public Integer insertHop(Hop hop) {
        return sqlSession.insert("Hop.insertHop", hop);
    }

    @Override
    public Integer updateHop(Hop hop) {
        return sqlSession.update("Hop.updateHop", hop);
    }

    @Override
    public Integer updateViewCount(Hop hop) {
        return sqlSession.update("Hop.updateViewCount", hop);
    }

    @Override
    public Integer deleteHop(Hop hop) {
        return sqlSession.update("Hop.deleteHop", hop);
    }


}