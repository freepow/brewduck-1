package com.brewduck.web.yeast.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("yeastDao")
public class YeastDaoImpl implements YeastDao {
    private static final Logger logger = LoggerFactory.getLogger(YeastDaoImpl.class);

    @Autowired
    private SqlSession sqlSession;

}