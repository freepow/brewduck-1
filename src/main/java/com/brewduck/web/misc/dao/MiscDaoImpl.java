package com.brewduck.web.misc.dao;

import com.brewduck.web.domain.Misc;
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
@Repository("miscDao")
public class MiscDaoImpl implements MiscDao {
    private static final Logger logger = LoggerFactory.getLogger(MiscDaoImpl.class);

    /**
     * Mybatis SQL Session Dependency Injection.
     */
    @Autowired
    private SqlSession sqlSession;


    @Override
    public List<Misc> selectMiscList(Misc misc) {
        return sqlSession.selectList("Misc.selectMiscList", misc);
    }

    @Override
    public Misc selectMiscDetail(Misc misc) {
        return sqlSession.selectOne("Misc.selectMiscDetail", misc);
    }

    @Override
    public Integer insertMisc(Misc misc) {
        return sqlSession.update("Misc.insertMisc", misc);
    }

    @Override
    public Integer updateMisc(Misc misc) {
        return sqlSession.update("Misc.updateMisc", misc);
    }

    @Override
    public Integer deleteMisc(Misc misc) {
        return sqlSession.update("Misc.deleteMisc", misc);
    }

}