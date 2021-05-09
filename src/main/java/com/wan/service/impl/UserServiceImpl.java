package com.wan.service.impl;

import com.wan.dao.IUserDao;
import com.wan.entity.User;
import com.wan.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired(required = false)
    private IUserDao userDao;

    @Override
    public User getUserByName(String name) {
        return userDao.getUserByName(name);
    }

    @Override
    public int updatePassword(User user) {
        return userDao.updatePassword(user);
    }
}
