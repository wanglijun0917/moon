package com.thunisoft.moon.mf.dbconfig.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thunisoft.moon.mf.dbconfig.service.IMfDbconfigService;
import com.thunisoft.moon.pojo.MfDbconfig;
import com.thunisoft.artery.data.QueryManager;
import com.thunisoft.artery.data.annotation.DataTranslate;
import com.thunisoft.artery.data.annotation.ExceptionTips;
import com.thunisoft.artery.data.model.IQueryInfo;

/**
 * 
 * MfDbconfigListController
 *
 * @description 消息抓取系统-数据库配置列表
 * @author artery6一键生成
 * @author huayu
 * @date 2018年10月30日 13:58
 * @version 1.0
 */
@Controller
@RequestMapping("mf/dbconfig/mfDbconfigList")
public class MfDbconfigListController {
    @Autowired
    IMfDbconfigService mfDbconfigService;

    /**
     * html模板入口
     * 
     * @return 'resources/templates'下的html模板
     */
    @GetMapping()
    public String index(HttpServletRequest request) {
        return "mf/dbconfig/mfDbconfigList";
    }

    /**
     * 列表数据
     * @param qp
     * @return
     */
    @RequestMapping("/rs")
    @ResponseBody
    @DataTranslate
    @ExceptionTips("加载消息抓取系统-数据库配置列表数据出错")
    public Object rs(IQueryInfo qp) {
        return QueryManager.queryPageDataForMybatis(qp, MfDbconfig.class, ()->mfDbconfigService.selectAll2(""));
    }

    /**
     * 删除数据
     * @param id
     * @return
     */
    @RequestMapping("/doDelete/{id}")
    @ExceptionTips("删除消息抓取系统-数据库配置失败")
    @ResponseBody
    public Object doDelete(@PathVariable String id) {
        mfDbconfigService.deleteByPrimaryKey(id);
        return "ok";
    }
}