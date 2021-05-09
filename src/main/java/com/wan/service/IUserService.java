package com.wan.service;

import com.wan.entity.User;

public interface IUserService {

    //获取用户名
    User getUserByName(String name);

    //修改密码
    int updatePassword(User user);
}
