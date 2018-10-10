CREATE TABLE IF NOT EXISTS `github_configuration` (
	`github_configuration_id` INT AUTO_INCREMENT PRIMARY KEY,
    `github_user_name` VARCHAR(255) NOT NULL,
    `github_password` VARCHAR(255) NOT NULL
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `github_pipeline_configuration` (
	`github_pipeline_configuration_id` INT AUTO_INCREMENT PRIMARY KEY,
    `github_repository_name` VARCHAR(255),
    `github_configuration_id` INT,
    FOREIGN KEY (`github_configuration_id`) REFERENCES `github_configuration`(`github_configuration_id`)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `jenkins_configuration` (
    `jenkins_configuration_id` INT AUTO_INCREMENT PRIMARY KEY,
    `jenkins_host_and_port` VARCHAR(255) NOT NULL,
    `jenkins_user_name` VARCHAR(255) NOT NULL,
    `jenkins_token` VARCHAR(255) NOT NULL
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `jenkins_pipeline_configuration` (
    `jenkins_pipeline_configuration_id` INT AUTO_INCREMENT PRIMARY KEY,
    `jenkins_job_name` VARCHAR(255) NOT NULL,
    `jenkins_configuration_id` INT,
    FOREIGN KEY (`jenkins_configuration_id`) REFERENCES `jenkins_configuration`(`jenkins_configuration_id`)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `dockerhub_pipeline_configuration` (
	`dockerhub_pipeline_configuration_id` INT AUTO_INCREMENT PRIMARY KEY
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `kubernetes_pipeline_configuration` (
	`kubernetes_pipeline_configuration_id` INT AUTO_INCREMENT PRIMARY KEY
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `pipeline` (
	`pipeline_id` INT AUTO_INCREMENT PRIMARY KEY,
    `github_pipeline_configuration_id` INT,
    `jenkins_pipeline_configuration_id` INT,
    `dockerhub_pipeline_configuration_id` INT,
    `kubernetes_pipeline_configuration_id` INT,
    FOREIGN KEY (`github_pipeline_configuration_id`) REFERENCES `github_pipeline_configuration`(`github_pipeline_configuration_id`),
    FOREIGN KEY (`jenkins_pipeline_configuration_id`) REFERENCES `jenkins_pipeline_configuration`(`jenkins_pipeline_configuration_id`),
    FOREIGN KEY (`dockerhub_pipeline_configuration_id`) REFERENCES `dockerhub_pipeline_configuration`(`dockerhub_pipeline_configuration_id`),
    FOREIGN KEY (`kubernetes_pipeline_configuration_id`) REFERENCES `kubernetes_pipeline_configuration`(`kubernetes_pipeline_configuration_id`)
) ENGINE=INNODB;