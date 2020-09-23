package cn.kgc.service.impl;

import cn.kgc.mapper.UsersMapper;
import cn.kgc.pojo.Users;
import cn.kgc.pojo.UsersExample;
import cn.kgc.service.adminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("adminService")
public class adminServiceImpl implements adminService {
    @Resource
    UsersMapper usersMapper;

    @Override
    public List<Users> selectByExample(UsersExample example) {
        return usersMapper.selectByExample(example);
    }

    @Override
    public void delete(Integer id) {
        usersMapper.deleteByPrimaryKey(id);
    }
    @Override
    public void update(Users users) {
        usersMapper.updateByPrimaryKeySelective(users);
    }

}
