package cn.kgc.service;

import cn.kgc.pojo.Users;

/**
 * @author shkstart
 * @create 2020-09-23 13:34
 */
public interface UsersService {

    Users selectByUserName(String username);
}
