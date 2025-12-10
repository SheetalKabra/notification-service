package com.sheetal.notification_service.dto;

import com.sheetal.notification_service.entity.NotificationChannel;
import com.sheetal.notification_service.entity.NotificationMode;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Map;

@Getter
@Setter
@Data
public class SendNotificationRequest {
    @NotBlank(message = "Tenant key is required.")
    private String tenantKey;
    @NotBlank(message = "Notification channel is required.")
    private NotificationChannel channel;
    @NotBlank(message = "Notification mode is required.")
    private NotificationMode mode;
    private Map<String, Object> data;
    private ScheduleRequest schedule;

    public String getTenantKey() {
        return tenantKey;
    }

    public void setTenantKey(String tenantKey) {
        this.tenantKey = tenantKey;
    }

    public NotificationChannel getChannel() {
        return channel;
    }

    public void setChannel(NotificationChannel channel) {
        this.channel = channel;
    }

    public NotificationMode getMode() {
        return mode;
    }

    public void setMode(NotificationMode mode) {
        this.mode = mode;
    }

    public Map<String, Object> getData() {
        return data;
    }

    public void setData(Map<String, Object> data) {
        this.data = data;
    }

    public ScheduleRequest getSchedule() {
        return schedule;
    }

    public void setSchedule(ScheduleRequest schedule) {
        this.schedule = schedule;
    }
}
