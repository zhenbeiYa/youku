package com.youku.gateway.config;

import org.checkerframework.checker.units.qual.C;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.reactive.config.WebFluxConfigurer;


import java.util.Arrays;

/*
 *DESCRIPTION 网关跨域配置
 *CLASSNAME  GatewayWebConfig
 *Author  23133
 *DATE 2023/8/25
 */
@Configuration
public class GatewayWebConfig implements WebFluxConfigurer {
    @Bean
    public CorsConfiguration corsConfiguration() {
        CorsConfiguration corsConfiguration = new CorsConfiguration();
        corsConfiguration.setAllowedHeaders(Arrays.asList("*"));
        corsConfiguration.setAllowedMethods(Arrays.asList("POST", "PUT", "DELETE", "GET", "UPDATE","PATCH"));
        corsConfiguration.setAllowedOriginPatterns(Arrays.asList("*"));
        return corsConfiguration;
    }

}
