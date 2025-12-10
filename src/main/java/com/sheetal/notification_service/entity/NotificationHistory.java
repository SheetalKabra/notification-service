package com.sheetal.notification_service.entity;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "notification_history")
public class NotificationHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "request_id", nullable = false)
    private NotificationRequest request;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tenant_id", nullable = false)
    private Tenant tenant;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "channel_id", nullable = false)
    private NotificationChannelEntity channel;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "mode_id", nullable = false)
    private NotificationModeEntity mode;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "status_id", nullable = false)
    private NotificationStatusEntity status;
    @Column(name = "request_body", columnDefinition = "JSON", nullable = false)
    private String requestBody;

    @Column(name = "response_body", columnDefinition = "JSON", nullable = false)
    private String responseBody;

    @Column(name = "failure_reason", columnDefinition = "TEXT", nullable = false)
    private String failureReason;
    private LocalDateTime sent_at;
    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    @PrePersist
    public void prePersist() {
        createdAt = LocalDateTime.now();
        updatedAt = createdAt;
    }

    @PreUpdate
    public void preUpdate() {
        updatedAt = LocalDateTime.now();
    }

}
