package com.brewduck.web.common.controller;

import com.brewduck.web.common.service.BoardService;
import com.brewduck.web.domain.Board;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "board")
public class BoardController {

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

    @Autowired
    private BoardService boardService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {

        Board board = new Board();

        List<Board> boardList = boardService.selectBoardList(board);
        model.addAttribute("list", boardList);

        return "board/list";
    }

    @ResponseBody
    @RequestMapping(value = "/list/{boardId}", method = RequestMethod.GET)
    public List insertHop(Model model,
                           @PathVariable("boardId") String boardId) {
        // 맥주 홉 저장
        Board board = new Board();
        board.setNttId(1);
        board.setBbsId(boardId);

        List<Board> selectCommentList = boardService.selectCommentList(board);

        return selectCommentList;
    }

}


