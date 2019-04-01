package com.thunisoft.moon.mf.dbconfig.service;

import java.util.List;

import com.thunisoft.moon.pojo.MfDbconfig;

/**
 * 
 * IMfDbconfigService
 *
 * @description 消息抓取系统-数据库配置列表
 * @author artery6一键生成
 * @author huayu
 * @date 2018年10月30日 13:58
 * @version 1.0
 */
public interface IMfDbconfigService {

    /**
     * 根据主键查询
     * 
     * @param id
     * @return
     */
    public MfDbconfig selectByPrimaryKey(String id);

    /**
     * 查询所有
     * 
     * @return
     */
    public List<MfDbconfig> selectAll();
    

    /**
     * 根据主键更新
     * 
     * @param mfDbconfig
     * @return
     */
    public int updateByPrimaryKey(MfDbconfig mfDbconfig);

    /**
     * 删除所有
     * 
     * @param id
     * @return
     */
    public int deleteByPrimaryKey(String id);
    
    /**
     * 插入
     * 
     * @param jzglLog
     * @return
     */
    public int insert(MfDbconfig mfDbconfig);

	public Object selectAll2(String string);
}