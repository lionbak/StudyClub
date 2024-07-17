package com.semiprj.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.semiprj.service.UserService;
import javax.servlet.http.HttpSession;
import com.semiprj.model.User;

@Controller
public class SignInController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/user_login", method = RequestMethod.GET)
    public String ctlUserLoginForm(@ModelAttribute User uvo) {
        return "redirect:/views/login.jsp";  // Logical view name without redirect for GET
    }

    @RequestMapping(value = "/user_login", method = RequestMethod.POST)
    public ModelAndView ctlUserLogin(@ModelAttribute User uvo, HttpSession session) {
        if (userService.isUserValid(uvo)) {
            session.setAttribute("user", uvo.getUserEmail());
            return new ModelAndView("redirect:/views/index.jsp");
        } else {
            return new ModelAndView("redirect:/views/login.jsp");
        }
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/views/index.jsp";
    }

    @RequestMapping(value = "/all_users", method = RequestMethod.GET)
    @ResponseBody
    public List<User> getAllUsers() {
        List<User> users = userService.getAllUsers();
        for (User user : users) {
            System.out.println(user);
        }
        return users;
    }
}