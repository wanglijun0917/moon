package com.thunisoft.moon.mf.dbconfig.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thunisoft.artery.data.annotation.DataTranslate;
import com.thunisoft.moon.mf.dbconfig.service.IMfDbconfigService;

/**
 * 
 * MfDbconfigDetailController
 *
 * @description 消息抓取系统-数据库配置详情
 * @author artery6一键生成
 * @author huayu
 * @date 2018年10月30日 13:58
 * @version 1.0
 */
@Controller
@RequestMapping("mf/dbconfig/mfDbconfigDetail")
public class MfDbconfigDetailController {
    @Autowired
    IMfDbconfigService mfDbconfigService;

    @GetMapping(value= {"/{id}", "/"})
    @DataTranslate
    public String index(HttpServletRequest request, @PathVariable String id) {
        request.setAttribute("rs", mfDbconfigService.selectByPrimaryKey(id));
        return "mf/dbconfig/mfDbconfigDetail";
    }
}