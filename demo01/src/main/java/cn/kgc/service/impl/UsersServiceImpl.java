package cn.kgc.service.impl;

import cn.kgc.mapper.UsersMapper;
import cn.kgc.pojo.Users;
import cn.kgc.pojo.UsersExample;
import cn.kgc.service.UsersService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-09-23 13:41
 */
@Service("usersService")
public class UsersServiceImpl implements UsersService {

    @Resource
    UsersMapper usersMapper;


    @Override
    public Users selectByUserName(String username) {
        Users users=null;
        UsersExample usersExample=new UsersExample();
        UsersExample.Criteria criteria = usersExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<Users> usersList = usersMapper.selectByExample(usersExample);
        if (usersList != null && usersList.size() > 0) {
            users = usersList.get(0);
        }
        return users;
    }
}
