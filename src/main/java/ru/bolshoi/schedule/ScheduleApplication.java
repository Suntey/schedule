package ru.bolshoi.schedule;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.config.BootstrapMode;

@SpringBootApplication
//@ComponentScan(value = "ru.bolshoi.schedule.*")
//@EntityScan("ru.bolshoi.schedule.*")
@EnableJpaRepositories(bootstrapMode = BootstrapMode.DEFERRED)
public class ScheduleApplication {
    public static void main(String[] args) {
        SpringApplication.run(ScheduleApplication.class, args);
    }
}
