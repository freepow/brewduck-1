package com.brewduck.web.yeast.service;

import com.brewduck.web.domain.Yeast;
import com.brewduck.web.yeast.dao.YeastDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <pre>
 * 맥주 이스트 Service 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Service("yeastService")
public class YeastServiceImpl implements YeastService {
    private static final Logger logger = LoggerFactory.getLogger(YeastServiceImpl.class);

    /**
     * YeastDao Dependency Injection.
     */
    @Autowired
    private YeastDao yeastDao;


    @Override
    public List<Yeast> selectYeastList(Yeast yeast) {
        return yeastDao.selectYeastList(yeast);
    }

    @Override
    public Yeast selectYeastDetail(Yeast yeast) {
        return yeastDao.selectYeastDetail(yeast);
    }

    @Override
    public Yeast countYeastType() {
        return yeastDao.countYeastType();
    }

    @Override
    public Boolean insertYeast(Yeast yeast) {
        int insertCount = yeastDao.insertYeast(yeast);

        return (insertCount == 1);
    }

    @Override
    public Boolean updateYeast(Yeast yeast) {
        int updateCount = yeastDao.updateYeast(yeast);

        return (updateCount == 1);
    }

    @Override
    public Boolean deleteYeast(Yeast yeast) {
        int deleteCount = yeastDao.deleteYeast(yeast);

        return (deleteCount == 1);
    }
}
