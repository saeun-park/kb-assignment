package org.scoula.board.service;

import org.scoula.board.dto.BoardDTO;

import java.util.List;

public interface BoardService {
    List<BoardDTO> getList();

    BoardDTO get(Long no);

    void create(BoardDTO board);

    boolean update(BoardDTO board);

    boolean delete(Long no);
}
