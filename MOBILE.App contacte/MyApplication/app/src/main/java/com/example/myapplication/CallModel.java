package com.example.myapplication;

public class CallModel {
    String name,calltype,calldurtion,time;

    public CallModel(String name,String calldurtype,String calldurtion,String time) {
        this.name = name;
        this.calltype = calldurtype;
        this.calldurtion = calldurtion;
        this.time = time;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCalltype() {
        return calltype;
    }

    public void setCalltype(String calltype) {
        this.calltype = calltype;
    }

    public String getCalldurtion() {
        return calldurtion;
    }

    public void setCalldurtion(String calldurtion) {
        this.calldurtion = calldurtion;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}

