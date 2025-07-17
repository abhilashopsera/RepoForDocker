package com.example.Abhilash;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class LearnDockerApplication {
	@RequestMapping("/hello")
	public String getHello() {
		return "Dockerised a Spring Boot Rest API Succesfully";
	}

	public static void main(String[] args) {
		SpringApplication.run(LearnDockerApplication.class, args);
}
}
