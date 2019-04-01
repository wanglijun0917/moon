package com.thunisoft.moon.pojo;

import javax.validation.constraints.NotBlank;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import java.io.Serializable;
import javax.persistence.Column;
import com.thunisoft.artery.data.annotation.User;
import com.alibaba.fastjson.annotation.JSONField;
import javax.persistence.Id;
/**
 * 
 * MfDbconfig
 *
 * @description 
 * @author artery6一键生成
 * @author huayu
 * @date 2018年10月30日 13:58
 * @version 1.0
 */
@Table(name="{db.t_mf_dbconfig}")
public class MfDbconfig  implements Serializable {
    private static final long serialVersionUID = 1L;
    
    /** 编号 */
    @NotBlank
    @Size(max=32)
    @Id
    @Column(name="c_bh")
    private String bh;

    /** 数据库名称 */
    @NotBlank
    @Size(max=300)
    @Column(name="c_dbname")
    private String dbname;

    /** 数据库类型 */
    @NotBlank
    @Size(max=300)
    @Column(name="c_dbtype")
    private String dbtype;

    /** ip地址 */
    @NotBlank
    @Size(max=300)
    @Column(name="c_ipaddress")
    private String ipaddress;

    /** 端口 */
    @NotBlank
    @Size(max=300)
    @Column(name="c_port")
    private String port;

    /** 用户名 */
    @User
    @NotBlank
    @Size(max=300)
    @Column(name="c_dbuser")
    private String dbuser;

    /** 密码 */
    @NotBlank
    @Size(max=300)
    @Column(name="c_password")
    private String password;

    /** 状态Y启用,N停用 */
    @NotBlank
    @Size(max=300)
    @Column(name="c_state")
    private String state;


    /**
     * 获取 c_bh
     *
     * @return 编号
     */
    @JSONField(name = "bh") 
    public String getBh() {
        return bh;
    }

    /**
     * 设置 c_bh
     *
     * @param bh 编号
     */
    public void setBh(String bh) {
        this.bh = bh;
    }
    /**
     * 获取 c_dbname
     *
     * @return 数据库名称
     */
    @JSONField(name = "dbname") 
    public String getDbname() {
        return dbname;
    }

    /**
     * 设置 c_dbname
     *
     * @param dbname 数据库名称
     */
    public void setDbname(String dbname) {
        this.dbname = dbname;
    }
    /**
     * 获取 c_dbtype
     *
     * @return 数据库类型
     */
    @JSONField(name = "dbtype") 
    public String getDbtype() {
        return dbtype;
    }

    /**
     * 设置 c_dbtype
     *
     * @param dbtype 数据库类型
     */
    public void setDbtype(String dbtype) {
        this.dbtype = dbtype;
    }
    /**
     * 获取 c_ipaddress
     *
     * @return ip地址
     */
    @JSONField(name = "ipaddress") 
    public String getIpaddress() {
        return ipaddress;
    }

    /**
     * 设置 c_ipaddress
     *
     * @param ipaddress ip地址
     */
    public void setIpaddress(String ipaddress) {
        this.ipaddress = ipaddress;
    }
    /**
     * 获取 c_port
     *
     * @return 端口
     */
    @JSONField(name = "port") 
    public String getPort() {
        return port;
    }

    /**
     * 设置 c_port
     *
     * @param port 端口
     */
    public void setPort(String port) {
        this.port = port;
    }
    /**
     * 获取 c_dbuser
     *
     * @return 用户名
     */
    @JSONField(name = "dbuser") 
    public String getDbuser() {
        return dbuser;
    }

    /**
     * 设置 c_dbuser
     *
     * @param dbuser 用户名
     */
    public void setDbuser(String dbuser) {
        this.dbuser = dbuser;
    }
    /**
     * 获取 c_password
     *
     * @return 密码
     */
    @JSONField(name = "password") 
    public String getPassword() {
        return password;
    }

    /**
     * 设置 c_password
     *
     * @param password 密码
     */
    public void setPassword(String password) {
        this.password = password;
    }
    /**
     * 获取 c_state
     *
     * @return 状态Y启用,N停用
     */
    @JSONField(name = "state") 
    public String getState() {
        return state;
    }

    /**
     * 设置 c_state
     *
     * @param state 状态Y启用,N停用
     */
    public void setState(String state) {
        this.state = state;
    }

}
