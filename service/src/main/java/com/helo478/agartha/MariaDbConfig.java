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

	@Value("${DB_PWD}")
	private String dbPassword;
	
	@Value("${DB_URL}")
	private String dbUrl;
	
	@Value("${DB_SCHEMA}")
	private String dbSchema;
	
	@Value("${DB_DRIVER:com.mysql.jdbc.Driver}")
	private String dbDriver;

	@PostConstruct
	public void logValues() {
	
		logger.info("DB_USER: {}", dbUser);
		logger.info("DB_PWD (redacted): {}", dbPassword.replaceAll(".", "*"));
	}

	@Bean
	public DataSource dataSource() {
		
		return DataSourceBuilder //@formatter:off
		        .create()
		        .username(dbUser)
		        .password(dbPassword)
		        .url(dbUrl + "/" + dbSchema)
		        .driverClassName(dbDriver)
		        .build(); //@formatter:on
	}

}
