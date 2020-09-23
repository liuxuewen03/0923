package cn.kgc.controller;

import cn.kgc.pojo.Users;
import cn.kgc.pojo.UsersExample;
import cn.kgc.service.UsersService;
import cn.kgc.service.adminService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-09-23 13:34
 */
@Controller
public class LoginController {

    @Resource
    UsersService usersService;
    @Resource
    adminService adminService;

    @RequestMapping("/")
    public String toLogin() {
        return "jsp/login";
    }

    @RequestMapping("doLogin")
    public String doLogin(String prop, String username, String passwored, Model model, HttpSession session) {
        Users users = usersService.selectByUserName(username);
        if (users == null) {
            model.addAttribute("error", "账号或密码输入错误");
            return "/jsp/login";
        } else if (users.getPassword().equals(passwored) == false) {
            model.addAttribute("error", "账号或密码输入错误");
            return "/jsp/login";
        } else {
            if (users.getSupper()==3){
                session.setAttribute("nickname", users.getNickname());
                session.setAttribute("id", users.getId());
                session.setAttribute("password", users.getPassword());
                return "redirect:adminindex";
            }else {
                session.setAttribute("nickname", users.getNickname());
            }

            return "/jsp/main";
        }
    }
    @RequestMapping("adminindex")
    public  String adminindex(Model model, HttpServletRequest request, String pageNumStr){
        //第几页
        Integer pageNum=1;//第几页
        if(pageNumStr!=null){
            pageNum=Integer.parseInt(pageNumStr);
        }
        Integer pageSize=5;//每页的数量

//排序
        PageHelper.startPage(pageNum,pageSize);
        PageHelper.orderBy("id asc");

        UsersExample example=new UsersExample();
        UsersExample.Criteria criteria = example.createCriteria();
        criteria.andSupperEqualTo(1);
        List<Users> users1 = adminService.selectByExample(example);
        PageInfo<Users> list = new PageInfo<>(users1);
        request.setAttribute("pageInfo",list);
        return "/jsp/admin/index";
    }
    @RequestMapping("BlogLet")
    public  String BlogLet(Model model, HttpServletRequest request, String pageNumStr,Integer id){
      adminService.delete(id);
        return "redirect:adminindex";
    }
    @RequestMapping("xiu")
    public  String xiu(){

        return "/jsp/admin/xgmm";
    }

    @RequestMapping("xiugai")
    public  String xiugai(Model model,Users users){
adminService.update(users);
        return "jsp/login";
    }
}
