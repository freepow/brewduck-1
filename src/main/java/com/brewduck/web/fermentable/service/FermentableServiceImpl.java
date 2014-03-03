package com.brewduck.web.fermentable.service;

import com.brewduck.web.domain.Fermentable;
import com.brewduck.web.fermentable.dao.FermentableDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * <pre>
 * 맥주 맥아 Service 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.20
 */
@Service("fermentableService")
public class FermentableServiceImpl implements FermentableService {
    private static final Logger logger = LoggerFactory.getLogger(FermentableServiceImpl.class);

    /**
     * FermentableDao Dependency Injection.
     */
    @Autowired
    private FermentableDao fermentableDao;


    @Override
    public List<Fermentable> selectFermentableList(Fermentable fermentable) {
        return fermentableDao.selectFermentableList(fermentable);
    }

    @Override
    public Fermentable selectFermentableDetail(Fermentable fermentable) {
        return fermentableDao.selectFermentableDetail(fermentable);
    }

    @Override
    public Boolean insertFermentable(Fermentable fermentable) {
        int insertCount = fermentableDao.insertFermentable(fermentable);

        return (insertCount == 1);
    }

    @Override
    public Boolean updateFermentable(Fermentable fermentable) {
        int updateCount = fermentableDao.updateFermentable(fermentable);

        return (updateCount == 1);
    }

    @Override
    public Boolean deleteFermentable(Fermentable fermentable) {
        int deleteCount = fermentableDao.deleteFermentable(fermentable);

        return (deleteCount == 1);
    }
}
