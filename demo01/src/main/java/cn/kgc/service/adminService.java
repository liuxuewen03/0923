package cn.kgc.service;

import cn.kgc.pojo.Users;
import cn.kgc.pojo.UsersExample;

import java.util.List;

public interface adminService {
    List<Users> selectByExample(UsersExample example);

    void delete(Integer id);

    void update(Users users);
}
