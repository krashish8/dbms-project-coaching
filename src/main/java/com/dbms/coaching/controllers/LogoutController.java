package com.dbms.coaching.controllers;

import com.dbms.coaching.services.SecurityService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LogoutController {
    @Autowired
    private SecurityService securityService;

    @GetMapping("/logout")
    public String logout() {
        securityService.autoLogout();
        return "redirect:/login?logout";
    }
}