package com.heatmap;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.scheduling.annotation.EnableScheduling;


@SpringBootApplication
@EnableScheduling
public class ExcelConsolidatorSmallAppApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(ExcelConsolidatorSmallAppApplication.class);
	}
	public static void main(String[] args) {
		SpringApplication.run(ExcelConsolidatorSmallAppApplication.class, args);
	}

}
