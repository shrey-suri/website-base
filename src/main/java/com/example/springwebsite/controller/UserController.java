package com.example.springwebsite.controller;

import com.example.springwebsite.beans.Users;
import com.example.springwebsite.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@SessionAttributes({"name","id"})
public class UserController {

    @Autowired
    private UserService userService;

    @InitBinder
    protected void initBinder(WebDataBinder binder){
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }


    @GetMapping({"/home","/"})
    public String homePage(){
        return "home-page";
    }

    @GetMapping("/login")
    public String loginPage(){
        return "login-page";
    }

    @PostMapping("/login")
    public String logInVerify(ModelMap map, @RequestParam String name, @RequestParam String password){
        Integer id = userService.verify(name,password);
        if (id == null){
            map.addAttribute("errorMessage", "Invalid Credentials!");
            return "login-page";
        }
        map.put("name",name.toUpperCase());
        map.put("id",id);
        return "redirect:user-home";
    }

    @GetMapping("/user-home")
    public String userHome(){
        return "user-home-page";
    }



    @GetMapping("/sign-in")
    public String signIn(ModelMap map){
        map.addAttribute("user", new Users());
        return "sign-in-page";
    }

    @PostMapping("/sign-in")
    public String signInVerify(ModelMap map, @Valid Users user, BindingResult bindingResult){
        if (bindingResult.hasErrors() ){
            return "sign-in-page";
        }
        userService.addUser(user);
        return "redirect:home";
    }

    @GetMapping("/user/delete")
    public String deleteUserConfirmation(){
        return "delete-user-page";
    }

    @PostMapping("/user/delete")
    public String deleteUser(@RequestParam String choice, ModelMap map){
        if (choice.equalsIgnoreCase("no"))
            return "redirect:/user-home";
        Integer id = (Integer) map.getAttribute("id");
        userService.deleteUser(id);
        return "redirect:/";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request){
        //Helps to remove the session variables
        request.getSession().invalidate();
        return "redirect:/";
    }
}
