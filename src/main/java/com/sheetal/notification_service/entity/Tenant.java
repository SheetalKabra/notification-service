package com.sheetal.notification_service.entity;

import jakarta.persistence.*;
import org.springframework.data.annotation.CreatedDate;

import java.time.LocalDateTime;

@Entity
@Table(name = "tenant")
public class Tenant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String tenantName;
    @Column(unique = true, nullable = false, length = 200)
    private String tenantKey;

    @CreatedDate
    private LocalDateTime createdAt;

}
