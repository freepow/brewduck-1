/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.common.dao;

import com.brewduck.web.domain.Common;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HUKORU - 임세환
 * Date: 13. 12. 11
 * Time: 오후 1:01
 * To change this template use File | Settings | File Templates.
 */
@Repository("commonDao")
public class CommonDaoImpl implements CommonDao {
    private static final Logger logger = LoggerFactory.getLogger(CommonDaoImpl.class);

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Override
    public int insertImage(Common common) throws DataAccessException {
        return sqlSessionTemplate.insert("Common.insertImage", common);
    }

    @Override
    public int selectImageId() throws DataAccessException {
        return (Integer) sqlSessionTemplate.selectOne("Common.selectImageId");
    }
    @Override
    public int selectMovieId() throws DataAccessException {
        return (Integer) sqlSessionTemplate.selectOne("Common.selectMovieId");
    }



    /**
     * 성별
     *
     * @return
     * @throws org.springframework.dao.DataAccessException
     */
    @Override
    public List<Common> selectGenderList() throws DataAccessException {
        return sqlSessionTemplate.selectList("Common.selectGenderList");
    }

    @Override
    public List<Common> selectMonthList() throws DataAccessException {
        return sqlSessionTemplate.selectList("Common.selectMonthList");
    }

    @Override
    public List<Common> selectMainCategoryList() throws DataAccessException {
        return sqlSessionTemplate.selectList("Common.selectMainCategoryList");
    }

    @Override
    public List<Common> selectSubCategoryList(Common common) throws DataAccessException {
        return sqlSessionTemplate.selectList("Common.selectSubCategoryList", common);
    }

    @Override
    public List<Common> selectMainAreaList() throws DataAccessException {
        return sqlSessionTemplate.selectList("Common.selectMainAreaList");
    }

    @Override
    public List<Common> selectSubAreaList(Common common) throws DataAccessException {
        return sqlSessionTemplate.selectList("Common.selectSubAreaList", common);
    }

    @Override
    public Common selectMainCategory(Common common) throws DataAccessException {
        return sqlSessionTemplate.selectOne("Common.selectMainCategory", common);
    }

    @Override
    public Common selectSubCategory(Common common) throws DataAccessException {
        return sqlSessionTemplate.selectOne("Common.selectSubCategory", common);
    }

}