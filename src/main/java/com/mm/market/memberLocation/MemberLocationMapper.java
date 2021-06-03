package com.mm.market.memberLocation;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberLocationMapper {

	public String getList(MemberLocationVO memberLocationVO) throws Exception;
	
	public int setInsert(MemberLocationVO memberLocationVO) throws Exception;
	
	public int setDelete(MemberLocationVO memberLocationVO) throws Exception;
}
