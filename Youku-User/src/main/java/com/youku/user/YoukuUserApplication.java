package com.youku.user;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication
public class YoukuUserApplication {

    public static void main(String[] args) {
        SpringApplication.run(YoukuUserApplication.class, args);
    }

}
