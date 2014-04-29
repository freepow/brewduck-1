package com.brewduck.web.misc.service;

import com.brewduck.web.domain.Misc;
import com.brewduck.web.misc.dao.MiscDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <pre>
 * 맥주 스타일 Service 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Service("miscService")
public class MiscServiceImpl implements MiscService {
    private static final Logger logger = LoggerFactory.getLogger(MiscServiceImpl.class);

    /**
     * MiscDao Dependency Injection.
     */
    @Autowired
    private MiscDao miscDao;


    @Override
    public List<Misc> selectMiscList(Misc misc) {
        return miscDao.selectMiscList(misc);
    }

    @Override
    public Misc selectMiscDetail(Misc misc) {
        return miscDao.selectMiscDetail(misc);
    }

    @Override
    public Boolean insertMisc(Misc misc) {
        int insertCount = miscDao.insertMisc(misc);

        return (insertCount == 1);
    }

    @Override
    public Boolean updateMisc(Misc misc) {
        int updateCount = miscDao.updateMisc(misc);

        return (updateCount == 1);
    }

    @Override
    public Boolean deleteMisc(Misc misc) {
        int deleteCount = miscDao.deleteMisc(misc);

        return (deleteCount == 1);
    }
}
