package com.sheetal.notification_service.repository;

import com.sheetal.notification_service.entity.NotificationHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationHistoryRepository extends JpaRepository<NotificationHistory, Long> {
}
