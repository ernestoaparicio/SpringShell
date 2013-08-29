/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springshell.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ea
 */

@Controller
@RequestMapping("/")
public class HomeController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model){
        return "home";
    }
}
 