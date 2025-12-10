package com.sheetal.notification_service.controller;

import com.sheetal.notification_service.dto.NotificationResponse;
import com.sheetal.notification_service.dto.SendNotificationRequest;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/notifications")
public class NotificationController {
    /*
        ===============================================
                        API Design
            sendNotification(tenantKey, channel, type, mode, data(Map<String, Object>), scheduleTime)
            response: requestId, status, message
            Request json:
            {
              "tenantKey": "TENANT_ABC",
              "channel": "EMAIL",
              "type": "ORDER_PLACED",
              "mode": "IMMEDIATE",
              "data": {
                "name": "Sheetal",
                "orderId": "ORD12345",
                "amount": "1299",
                "deliveryDate": "2025-03-20"
              }
            }
        ===============================================
     */

    public ResponseEntity<NotificationResponse> send(@Valid @RequestBody SendNotificationRequest request){
        return null;
    }

}
