package com.tangzh.mapper;

import com.tangzh.domain.Advise;
import com.tangzh.domain.AdviseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdviseMapper {
    int countByExample(AdviseExample example);

    int deleteByExample(AdviseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Advise record);

    int insertSelective(Advise record);

    List<Advise> selectByExample(AdviseExample example);

    Advise selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Advise record, @Param("example") AdviseExample example);

    int updateByExample(@Param("record") Advise record, @Param("example") AdviseExample example);

    int updateByPrimaryKeySelective(Advise record);

    int updateByPrimaryKey(Advise record);
}