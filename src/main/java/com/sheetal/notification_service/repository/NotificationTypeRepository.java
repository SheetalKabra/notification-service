package com.sheetal.notification_service.repository;

import com.sheetal.notification_service.entity.NotificationTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationTypeRepository extends JpaRepository<NotificationTypeEntity, Long> {
}
