package com.wan.dao;

import com.wan.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IUserDao {

    //根据名字查找用户
    User getUserByName(String name);

    //修改密码
    int updatePassword(User user);
}
