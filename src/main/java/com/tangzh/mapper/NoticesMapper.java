package com.tangzh.mapper;

import com.tangzh.domain.Notices;
import com.tangzh.domain.NoticesExample;
import com.tangzh.domain.NoticesKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NoticesMapper {
    int countByExample(NoticesExample example);

    int deleteByExample(NoticesExample example);

    int deleteByPrimaryKey(NoticesKey key);

    int insert(Notices record);

    int insertSelective(Notices record);

    List<Notices> selectByExample(NoticesExample example);

    Notices selectByPrimaryKey(NoticesKey key);

    int updateByExampleSelective(@Param("record") Notices record, @Param("example") NoticesExample example);

    int updateByExample(@Param("record") Notices record, @Param("example") NoticesExample example);

    int updateByPrimaryKeySelective(Notices record);

    int updateByPrimaryKey(Notices record);
}