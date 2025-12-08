package com.sheetal.notification_service.repository;

import com.sheetal.notification_service.entity.NotificationChannelEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationChannelRepository extends JpaRepository<NotificationChannelEntity, Long> {
}
