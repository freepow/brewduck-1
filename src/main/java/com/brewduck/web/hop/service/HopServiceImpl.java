package com.brewduck.web.hop.service;

import com.brewduck.web.hop.dao.HopDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("hopService")
public class HopServiceImpl implements HopService {
    private static final Logger logger = LoggerFactory.getLogger(HopServiceImpl.class);

    @Autowired
    private HopDao hopDao;

}
