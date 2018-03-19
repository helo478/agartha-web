package com.helo478.agartha;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MariaDbConfig {

	private static final Logger logger = LoggerFactory.getLogger(MariaDbConfig.class);

	@Value("${DB_USER}")
	private String dbUser;

	@Value("${DB_PASSWORD}")
	private String dbPassword;

	@PostConstruct
	public void logValues() {
	
		logger.info("DB_USER: {}", dbUser);
		logger.info("DB_PASSWORD (redacted): {}", dbPassword.replaceAll(".", "*"));
	}

	@Bean
	public DataSource dataSource() {
		
		return DataSourceBuilder //@formatter:off
		        .create()
		        .username(dbUser)
		        .password(dbPassword)
		        .url("jdbc:mysql://localhost/agartha")
		        .driverClassName("com.mysql.jdbc.Driver")
		        .build(); //@formatter:on
	}

}
