package org.scoula.ex06;

import java.util.ArrayList;
import java.util.List;

public class BoardDAO2 {

    public List<org.scoula.ex06.BoardVO2> getList(){
        List<org.scoula.ex06.BoardVO2> list = new ArrayList<org.scoula.ex06.BoardVO2>();
        for (int i = 0; i < 100; i++) {
                org.scoula.ex06.BoardVO2 vo = new org.scoula.ex06.BoardVO2(i,
                        "title" + i,
                        "content" + i,
                        "writer" + i);
                list.add(vo);
        }
        return list;
    }
}
