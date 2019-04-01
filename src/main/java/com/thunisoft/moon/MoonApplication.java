package com.thunisoft.moon;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@EnableCaching
@MapperScan({"com.thunisoft.moon.mapper"})
@SpringBootApplication
public class MoonApplication {

    public static void main(String[] args) {
        SpringApplication.run(MoonApplication.class, args);
    }

}
