package com.sheetal.notification_service.repository;

import com.sheetal.notification_service.entity.NotificationModeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationModeRepository extends JpaRepository<NotificationModeEntity, Long> {
}
