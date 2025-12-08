package com.sheetal.notification_service.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "notification_channel")
public class NotificationChannelEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name="name", unique = true, nullable = false)
    private NotificationChannel name;


}
