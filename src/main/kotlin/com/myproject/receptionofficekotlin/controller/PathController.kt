package com.myproject.receptionofficekotlin.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

@Controller
@RequestMapping("/api/auth")
class PathController {

    @RequestMapping("/login")
    fun loginPage(): String{
        return "loginPage"
    }
}