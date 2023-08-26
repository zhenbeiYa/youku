package com.youku.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class YoukuGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(YoukuGatewayApplication.class, args);
    }

}
