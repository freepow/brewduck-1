package com.brewduck.web.fermentable.dao;

import com.brewduck.web.domain.Style;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("styleDao")
public class FermentableDaoImpl implements FermentableDao {
    private static final Logger logger = LoggerFactory.getLogger(FermentableDaoImpl.class);

    @Autowired
    private SqlSession sqlSession;

}