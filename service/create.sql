create sequence hibernate_sequence start with 1 increment by 1
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id))
create table github_configuration (id bigint not null, project_path varchar(255), credentials_id bigint, primary key (id))
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id))
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id))
create table jenkins_configuration (id bigint not null, primary key (id))
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id))
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id))
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id))
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration
create sequence hibernate_sequence start with 1 increment by 1
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id))
create table github_configuration (id bigint not null, project_path varchar(255), credentials_id bigint, primary key (id))
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id))
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id))
create table jenkins_configuration (id bigint not null, primary key (id))
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id))
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id))
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id))
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration
create sequence hibernate_sequence start with 1 increment by 1
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id))
create table github_configuration (id bigint not null, project_path varchar(255), credentials_id bigint, primary key (id))
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id))
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id))
create table jenkins_configuration (id bigint not null, primary key (id))
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id))
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id))
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id))
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration
create sequence hibernate_sequence start with 1 increment by 1
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id))
create table github_configuration (id bigint not null, project_path varchar(255), credentials_id bigint, primary key (id))
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id))
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id))
create table jenkins_configuration (id bigint not null, primary key (id))
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id))
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id))
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id))
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
create table docker_hub_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table github_configuration (id bigint not null, credentials_id bigint, primary key (id)) engine=MyISAM
create table github_credentials (id bigint not null, password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table github_pipeline_configuration (id bigint not null, repository_name varchar(255), github_configuration_id bigint, primary key (id)) engine=MyISAM
create table hibernate_sequence (next_val bigint) engine=MyISAM
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table jenkins_configuration (id bigint not null, host_url varchar(255), password varchar(255), user_name varchar(255), primary key (id)) engine=MyISAM
create table jenkins_pipeline_configuration (id bigint not null, job_name varchar(255), jenkins_configuration_id bigint, primary key (id)) engine=MyISAM
create table kubernetes_pipeline_configuration (id bigint not null, primary key (id)) engine=MyISAM
create table pipeline (id bigint not null, docker_id bigint, github_id bigint, jenkins_id bigint, kubernetes_id bigint, primary key (id)) engine=MyISAM
alter table github_configuration add constraint FKjen10uk2nkn9bspse6naea7wy foreign key (credentials_id) references github_credentials (id)
alter table github_pipeline_configuration add constraint FK56f92d6gjdgsx3tn82dulm944 foreign key (github_configuration_id) references github_configuration (id)
alter table jenkins_pipeline_configuration add constraint FKhgp077dytdu8iunw5qbrwmfb5 foreign key (jenkins_configuration_id) references jenkins_configuration (id)
alter table pipeline add constraint FKdchyf1yxn26mr96nhxidetqfi foreign key (docker_id) references docker_hub_pipeline_configuration (id)
alter table pipeline add constraint FKc9v96lq2rrf39xg5but68nuid foreign key (github_id) references github_pipeline_configuration (id)
alter table pipeline add constraint FKtr5fhsyj4ybd2jp132ubi2a0r foreign key (jenkins_id) references jenkins_pipeline_configuration (id)
alter table pipeline add constraint FKfgauu4euljf6nqwux8trpxnty foreign key (kubernetes_id) references kubernetes_pipeline_configuration (id)
