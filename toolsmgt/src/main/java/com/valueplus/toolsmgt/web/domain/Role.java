package com.valueplus.toolsmgt.web.domain;

public class Role {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return String.format("Role{name:%s}",name);
    }
}
