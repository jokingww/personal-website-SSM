package com.wan.aop;

import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;
import java.util.logging.Logger;

public class LoggerBefore implements MethodBeforeAdvice {
    private static final Logger log = Logger.getLogger(String.valueOf(LoggerBefore.class));

    @Override
    public void before(Method method, Object[] args, Object target) throws Throwable {
        log.info("开始修改密码");
    }
}
