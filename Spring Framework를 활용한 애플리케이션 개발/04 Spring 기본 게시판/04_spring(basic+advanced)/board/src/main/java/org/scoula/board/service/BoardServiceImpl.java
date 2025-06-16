package org.scoula.board.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.scoula.board.domain.BoardVO;
import org.scoula.board.dto.BoardDTO;
import org.scoula.board.mapper.BoardMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j2
@Service
@RequiredArgsConstructor

public class BoardServiceImpl implements BoardService {
    final private BoardMapper mapper;

    @Override
    public List<BoardDTO> getList() {
        log.info("getList..........");
        return mapper.getList().stream() // BoardVO의 스트림
                .map(BoardDTO::of) // BoardDTO의 스트림
                .toList(); // List<BoardDTO> 변환
    }

    @Override
    public BoardDTO get(Long no) {
        BoardVO vo = mapper.get(no);
        // 다른 곳으로 넘길 때는 dto로 만들어서 넘기자
        BoardDTO dto = BoardDTO.of(vo);

        return dto;
    }

    @Override
    public void create(BoardDTO board) {
        log.info("create......" + board);
        mapper.create(board.toVo());
    }

    @Override
    public boolean update(BoardDTO board) {
        log.info("update......" + board);
        return mapper.update(board.toVo()) == 1;
    }

    @Override
    public boolean delete(Long no) {
        log.info("delete......." + no);
        return mapper.delete(no) == 1;
    }


}
