package com.example.Abhilash;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class LearnDockerApplicationTests {

	@Test
void testWithPostgresContainer() {
    try (PostgreSQLContainer<?> postgres = new PostgreSQLContainer<>("postgres:15")) {
        postgres.start();
        assertTrue(postgres.isRunning());
    }
}
}
