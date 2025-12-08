package com.sheetal.notification_service.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "notification_mode")
public class NotificationModeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "name", unique = true, nullable = false)
    private NotificationMode name;
}
