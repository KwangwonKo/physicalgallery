package com.seongnae.login.dao;
import org.apache.ibatis.annotations.Mapper;
import com.seongnae.member.vo.MemberVO;
@Mapper
public interface ILoginDao {
	public MemberVO getMember(String memId);
	public int insertMember(MemberVO member);
}
