package com.bitnile.experimentconfigserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class ExperimentConfigServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(ExperimentConfigServerApplication.class, args);
    }

}
