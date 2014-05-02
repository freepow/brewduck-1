/**
 * @FileName  : AuthenticationNotException.java
 * @Project   : talenta
 * @Date      : 2013. 6. 26
 * @작성자      : @author hukoru

 * @변경이력    :
 * @프로그램 설명 :
 */
package com.brewduck.web.common.dao;

import com.brewduck.web.domain.Board;
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
@Repository("boardDao")
public class BoardDaoImpl implements BoardDao {
    private static final Logger logger = LoggerFactory.getLogger(BoardDaoImpl.class);

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<Board> selectBoardList(Board board) throws DataAccessException {
        return sqlSessionTemplate.selectList("Common.selectBoardList", board);
    }

    @Override
    public List<Board> selectCommentList(Board board) throws DataAccessException {
        return sqlSessionTemplate.selectList("Common.selectCommentList", board);
    }


}