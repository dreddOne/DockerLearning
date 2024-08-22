package myApp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BaseAppClass {

    @GetMapping("/")
    public String home() {
        return "Hello teacher";
    }
    @GetMapping("/getMessage")
    public String getMessage(){
        return "I need a high grade";
    }
}
