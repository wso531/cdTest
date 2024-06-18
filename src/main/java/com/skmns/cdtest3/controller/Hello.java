package com.skmns.cdtest3.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Hello {

    @GetMapping("/test")
    public String test() {

<<<<<<< HEAD
        return "Hello World4!";
=======
        return "Hello World2!";
>>>>>>> 4074242f7c8718e1bea7227ee73799407c7123ed
    }

}
