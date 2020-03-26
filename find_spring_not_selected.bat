@echo off
for %%x in (
			spring-boot-starter-undertow:jar:2.2.0.RELEASE
			spring-boot-starter-web:jar:2.2.0.RELEASE
			spring-boot-starter-json:jar:2.2.0.RELEASE
			spring-boot-starter-validation:jar:2.2.0.RELEASE
			spring-web:jar:5.2.0.RELEASE
			spring-webmvc:jar:5.2.0.RELEASE
			spring-boot-starter-actuator:jar:2.2.0.RELEASE
			spring-boot-actuator-autoconfigure:jar:2.2.0.RELEASE
			spring-boot-actuator:jar:2.2.0.RELEASE
			spring-boot-starter-data-jpa:jar:2.2.0.RELEASE
			spring-boot-starter-aop:jar:2.2.0.RELEASE
			spring-boot-starter-jdbc:jar:2.2.0.RELEASE
			spring-jdbc:jar:5.2.0.RELEASE
			spring-data-jpa:jar:2.2.0.RELEASE
			spring-data-commons:jar:2.2.0.RELEASE
			spring-orm:jar:5.2.0.RELEASE
			spring-tx:jar:5.2.0.RELEASE
			spring-aspects:jar:5.2.0.RELEASE
			spring-boot-starter-security:jar:2.2.0.RELEASE
			spring-aop:jar:5.2.0.RELEASE
			spring-security-config:jar:5.2.0.RELEASE
			spring-boot-starter-thymeleaf:jar:2.2.0.RELEASE
			spring-boot-starter-test:jar:2.2.0.RELEASE
			spring-boot-starter:jar:2.2.0.RELEASE
			spring-boot:jar:2.2.0.RELEASE
			spring-boot-autoconfigure:jar:2.2.0.RELEASE
			spring-boot-starter-logging:jar:2.2.0.RELEASE
			spring-boot-test:jar:2.2.0.RELEASE
			spring-boot-test-autoconfigure:jar:2.2.0.RELEASE
			spring-core:jar:5.2.0.RELEASE
			spring-jcl:jar:5.2.0.RELEASE
			spring-test:jar:5.2.0.RELEASE
			spring-security-test:jar:4.1.3.RELEASE
			spring-security-core:jar:5.2.0.RELEASE
			spring-beans:jar:5.2.0.RELEASE
			spring-context:jar:5.2.0.RELEASE
			spring-expression:jar:5.2.0.RELEASE
			spring-security-web:jar:5.2.0.RELEASE
       ) do (
		 @REM IF EXIST "not_%%x.txt" (
		 @REM   copy /y not_%%x.txt spring_dependencies_working_copy.txt
		 @REM   echo "copied not_%%x.txt into spring_dependencies_working_copy.txt"
		 @REM ) ELSE (
		 @REM   echo "First execution"
		 @REM )
		 @REM pause
		 copy /y missing_spring_dependencies.txt spring_dependencies_working_copy.txt
		 findstr /v /c:"%%x" spring_dependencies_working_copy.txt > missing_spring_dependencies.txt
       )