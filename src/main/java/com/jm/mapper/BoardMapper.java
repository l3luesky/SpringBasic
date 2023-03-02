package com.jm.mapper;

import java.util.List;

import com.jm.entity.Board;
import com.jm.entity.Member;

// JDBC -> MyBatis -> Spring MyBatis -> Spring JPA
public interface BoardMapper {	// BoardMapper.xml
	
	public List<Board> list();
	public void register(Board vo);
	public Board getByIdx(int idx);
	public void remove(int idx);
	public void update(Board vo);
	public Member login(Member mvo);
	
}
