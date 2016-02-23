package com.aquent.crudapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Simple controller to redirect to the landing page.
 */
@Controller
public class HomeController {

    /**
     * Handles the landing page
     *
     * @return redirect to the landing page
     */
    @RequestMapping
    public ModelAndView index() {
        return new ModelAndView("home/landing");
    }
}
