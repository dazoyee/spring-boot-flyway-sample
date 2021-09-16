package com.github.iordazo.spring.boot.flyway.sample.config;

import org.flywaydb.core.Flyway;
import org.springframework.boot.autoconfigure.flyway.FlywayMigrationStrategy;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import java.util.Arrays;

@Profile("dev")
@Configuration
public class FlywayConfig {

    @Bean
    public FlywayMigrationStrategy flywayMigrationStrategy() {
        return flyway -> {
            flyway.migrate();
            log(flyway);
        };
    }

    private void log(final Flyway flyway){
        Arrays.stream(flyway.info().all()).forEach(info -> System.out.println(
                "=== Flyway info ===\n" +
                        "Version: " + info.getVersion().getVersion() + "\n" +
                        "Description: " + info.getDescription() + "\n" +
                        "Type: " + info.getType().name() + "\n" +
                        "Script: " + info.getScript() + "\n" +
                        "Checksum: " + info.getChecksum() + "\n" +
                        "Installed on: " + info.getInstalledOn() + "\n" +
                        "Execution time: " + info.getExecutionTime() + "\n" +
                        "State: " + info.getState().getDisplayName() + "\n"
        ));
    }
}
