package com.thunisoft.moon.mf.dbconfig.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thunisoft.moon.mf.dbconfig.service.IMfDbconfigService;

import com.thunisoft.moon.mapper.MfDbconfigMapper;
import com.thunisoft.moon.pojo.MfDbconfig;

@Service
public class MfDbconfigService implements IMfDbconfigService {

    @Autowired
    private MfDbconfigMapper mfDbconfigMapper;

    @Override
    public MfDbconfig selectByPrimaryKey(String id) {
        return mfDbconfigMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<MfDbconfig> selectAll() {
        return mfDbconfigMapper.selectAll();
    }
    
    public List<MfDbconfig> selectAll2(String ss) {
        return mfDbconfigMapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(MfDbconfig mfDbconfig) {
        return mfDbconfigMapper.updateByPrimaryKey(mfDbconfig);
    }

    @Override
    public int deleteByPrimaryKey(String id) {
        return mfDbconfigMapper.deleteByPrimaryKey(id);
    }
    
    @Override
    public int insert(MfDbconfig mfDbconfig) {
        return mfDbconfigMapper.insert(mfDbconfig);
    }
}
