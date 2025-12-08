package com.sheetal.notification_service.repository;

import com.sheetal.notification_service.entity.NotificationStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationStatusRepository extends JpaRepository<NotificationStatus, Long> {
}
