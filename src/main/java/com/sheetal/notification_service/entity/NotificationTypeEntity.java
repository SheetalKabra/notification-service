package com.sheetal.notification_service.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "notification_type")
public class NotificationTypeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "name", unique = true, nullable = false)
    private NotificationType name;
}
