package com.springboot.bank.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.springboot.bank.security.domain.Authority;
import jdk.nashorn.internal.ir.annotations.Ignore;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 用户实体类
 */
public class User implements Serializable {
    private static final long serialVersionUID = 1595619573103236962L;
    private Integer id;
    private String username;
    private String password;
    private String email;
    private Integer enabled;
    private Date lastPasswordResetDate;
    private Date loginTime;
    private List<Authority> authorities;

    public User() {
    }

    public List<Authority> getAuthorities() {
        return authorities;
    }

    public void setAuthorities(List<Authority> authorities) {
        this.authorities = authorities;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getEnabled() {
        return enabled;
    }

    public void setEnabled(Integer enabled) {
        this.enabled = enabled;
    }

    public Date getLastPasswordResetDate() {
        return lastPasswordResetDate;
    }

    public void setLastPasswordResetDate(Date lastPasswordResetDate) {
        this.lastPasswordResetDate = lastPasswordResetDate;
    }

    public Date getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }
}
