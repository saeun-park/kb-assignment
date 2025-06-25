package org.scoula.ex06;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class BoardDAO{

    //db에서 board테이블의 모든 row를 가지고 왔다고 가정함.
    public List<org.scoula.ex06.BoardVO> getList(){
        List<org.scoula.ex06.BoardVO> list = new ArrayList<org.scoula.ex06.BoardVO>();
        for (int i = 0; i < 100; i++) {
            //row 하나당 vo하나
            org.scoula.ex06.BoardVO vo = new org.scoula.ex06.BoardVO(i,
                    "title" + i,
                    "content" + i,
                    "writer" + i);
            list.add(vo);
        }
        return list;
    }
}
