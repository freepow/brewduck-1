package com.brewduck.web.hop.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("hopDao")
public class HopDaoImpl implements HopDao {
    private static final Logger logger = LoggerFactory.getLogger(HopDaoImpl.class);

    @Autowired
    private SqlSession sqlSession;

}