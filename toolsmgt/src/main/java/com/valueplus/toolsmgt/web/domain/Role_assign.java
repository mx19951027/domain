package com.valueplus.toolsmgt.web.domain;

public class Role_assign {
    private Integer user_id;
    private Integer role_id;

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getRole_id() {
        return role_id;
    }

    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return String.format("Role_assign{user_id:%d,role_id:%s}",user_id,role_id);
    }
}
