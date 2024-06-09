package com.seongnae.free.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.seongnae.common.vo.PagingVO;
import com.seongnae.free.vo.FreeBoardVO;
@Mapper
public interface IFreeBoardDao {
	public int getTotalRowCount(PagingVO paging);
	public List<FreeBoardVO> getBoardList(PagingVO paging);
	public FreeBoardVO getBoard(int boNo);
	public int updateBoard(FreeBoardVO freeBoard);
	public int deleteBoard(FreeBoardVO freeBoard);
	public int insertBoard(FreeBoardVO freeBoard);
}
