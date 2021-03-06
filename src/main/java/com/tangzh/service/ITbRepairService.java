package com.tangzh.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tangzh.domain.Repair;
import com.tangzh.domain.RepairExample;

public interface ITbRepairService {
    int countByExample(RepairExample example);

    int deleteByExample(RepairExample example);

    int deleteByPrimaryKey(Integer rId);

    int insert(Repair record);

    int insertSelective(Repair record);

    List<Repair> selectByExample(RepairExample example);

    Repair selectByPrimaryKey(Integer rId);

    int updateByExampleSelective(@Param("record") Repair record, @Param("example") RepairExample example);

    int updateByExample(@Param("record") Repair record, @Param("example") RepairExample example);

    int updateByPrimaryKeySelective(Repair record);

    int updateByPrimaryKey(Repair record);
}
