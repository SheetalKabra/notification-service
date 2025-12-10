package com.sheetal.notification_service.entity;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "notification_template",
            uniqueConstraints = @UniqueConstraint(
                    columnNames = {"tenant_id", "channel_id", "type_id", "mode_id"}
            ))
public class NotificationTemplate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tenant_id", nullable = false)
    private Tenant tenant;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "channel_id", nullable = false)
    private NotificationChannelEntity channel;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "mode_id", nullable = false)
    private NotificationModeEntity mode;

    @Column(name = "template_body", columnDefinition = "TEXT", nullable = false)
    private String templateBody;
    private String subject;

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
