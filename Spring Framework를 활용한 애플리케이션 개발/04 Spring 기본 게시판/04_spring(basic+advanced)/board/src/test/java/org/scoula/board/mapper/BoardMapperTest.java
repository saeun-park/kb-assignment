package org.scoula.board.mapper;

import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.scoula.board.domain.BoardVO;
import org.scoula.config.RootConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {RootConfig.class})
@Log4j2
class BoardMapperTest {

    @Autowired
    private BoardMapper mapper;

    // 전체보기
    @Test
    @DisplayName("BoardMapper의 목록 불러오기")
    void getList() {
        for (BoardVO board : mapper.getList()) {
            log.info(board);
        }
    }

    // 상세보기
    @Test
    @DisplayName("BoardMapper의 게시글 읽기")
    void get() {
        BoardVO board = mapper.get(1L); // Long type의 L이 붙는다
        log.info(board);
    }

    @Test
    @DisplayName("BoardMapper의 새글 작성")
    void create() {
        BoardVO board = new BoardVO();
        board.setTitle("새로 작성하는 글");
        board.setContent("새로 작성하는 내용");
        board.setWriter("user00");
        mapper.create(board);
        log.info(board);
    }

    @Test
    void update() {
        BoardVO board = new BoardVO();
        board.setNo(5L);
        board.setTitle("수정된 제목");
        board.setContent("수정된 내용");
        board.setWriter("user00");
        int count = mapper.update(board);
        log.info(board);
        log.info("update count: " + count);
    }

    @Test
    @DisplayName("BoardMapper의 글 삭제")
    void delete() {
        log.info("delete count: " + mapper.delete(5L));
    }
}
