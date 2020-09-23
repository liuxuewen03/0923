package cn.kgc.controller;

import cn.kgc.pojo.Users;
import cn.kgc.service.UsersService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * @author shkstart
 * @create 2020-09-23 13:34
 */
@Controller
public class LoginController {

    @Resource
    UsersService usersService;


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
            session.setAttribute("nickname", users.getNickname());
            return "/jsp/main";
        }
    }
}
