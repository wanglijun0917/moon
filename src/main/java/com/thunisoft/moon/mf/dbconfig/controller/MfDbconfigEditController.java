package com.thunisoft.moon.mf.dbconfig.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thunisoft.moon.mf.dbconfig.service.IMfDbconfigService;
import com.thunisoft.moon.pojo.MfDbconfig;
import com.thunisoft.artery.data.annotation.DataTranslate;
import com.thunisoft.artery.data.annotation.ExceptionTips;
import com.thunisoft.artery.util.uuid.UUIDHelper;

/**
 * 
 * MfDbconfigEditController
 *
 * @description 消息抓取系统-数据库配置新增、编辑
 * @author artery6一键生成
 * @author huayu
 * @date 2018年10月30日 13:58
 * @version 1.0
 */
@Controller
@RequestMapping("mf/dbconfig/mfDbconfigEdit")
public class MfDbconfigEditController {
    @Autowired
    IMfDbconfigService mfDbconfigService;

    /**
     * html模板入口
     * 
     * @return 'resources/templates'下的html模板
     */
    @GetMapping(value= {"/insert", "/"})
    public String index(HttpServletRequest request) {
        return "mf/dbconfig/mfDbconfigEdit";
    }

    @GetMapping("/update/{id}")
    @DataTranslate
    public String update(HttpServletRequest request, @PathVariable String id) {
        request.setAttribute("rs", mfDbconfigService.selectByPrimaryKey(id));
        return "mf/dbconfig/mfDbconfigEdit";
    }

    @RequestMapping("/doUpdate")
    @ExceptionTips("保存人员失败")
    @ResponseBody
    public Object doUpdate(@RequestBody MfDbconfig mfDbconfig) {
        if (StringUtils.isBlank(mfDbconfig.getBh())) {
            mfDbconfig.setBh(UUIDHelper.getUuid());
            mfDbconfigService.insert(mfDbconfig);
        } else {
            mfDbconfigService.updateByPrimaryKey(mfDbconfig);
        }
        return "ok";
    }
}