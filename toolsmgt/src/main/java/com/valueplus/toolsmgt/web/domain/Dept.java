package com.valueplus.toolsmgt.web.domain;

public class Dept {
    private Integer id;
    private String code;
    private String name;
    private String leader;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLeader() {
        return leader;
    }

    public void setLeader(String leader) {
        this.leader = leader;
    }

    @Override
    public String toString() {
        return String.format("Dept{id:%d,code:%s,name:%s,leader:%s}",id,code,name,leader);
    }
}
