package org.scoula.board.mapper;

import org.scoula.board.domain.BoardVO;

import java.util.List;

public interface BoardMapper {

    List<BoardVO> getList();

    BoardVO get(Long no);

    void create(BoardVO board);

    int update(BoardVO board);

    int delete(Long no);

}
