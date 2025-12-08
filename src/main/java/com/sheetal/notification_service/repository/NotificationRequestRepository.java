package com.sheetal.notification_service.repository;

import com.sheetal.notification_service.entity.NotificationRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationRequestRepository extends JpaRepository<NotificationRequest, Long> {
}
