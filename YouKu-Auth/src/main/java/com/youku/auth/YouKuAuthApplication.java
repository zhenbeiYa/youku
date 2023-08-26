package com.youku.auth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableDiscoveryClient
@SpringBootApplication
public class YouKuAuthApplication {

    public static void main(String[] args) {
        SpringApplication.run(YouKuAuthApplication.class, args);
    }

}
