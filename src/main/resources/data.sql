-- ==============================
-- CHANNEL MASTER DATA
-- ==============================
INSERT IGNORE INTO notification_channel (name) VALUES ('EMAIL');
INSERT IGNORE INTO notification_channel (name) VALUES ('SMS');
INSERT IGNORE INTO notification_channel (name) VALUES ('PUSH');
INSERT IGNORE INTO notification_channel (name) VALUES ('WHATSAPP');


-- ==============================
-- MODE MASTER DATA
-- ==============================
INSERT IGNORE INTO notification_mode (name) VALUES ('IMMEDIATE');
INSERT IGNORE INTO notification_mode (name) VALUES ('ON_SCHEDULE');


-- ==============================
-- TYPE MASTER DATA
-- ==============================
--INSERT IGNORE INTO notification_type (name) VALUES ('OTP');
--INSERT IGNORE INTO notification_type (name) VALUES ('WELCOME');
--INSERT IGNORE INTO notification_type (name) VALUES ('ORDER_PLACED');
--INSERT IGNORE INTO notification_type (name) VALUES ('ORDER_CANCELLED');
--INSERT IGNORE INTO notification_type (name) VALUES ('TXN');
--INSERT IGNORE INTO notification_type (name) VALUES ('DELIVERED');


-- ==============================
-- STATUS MASTER DATA
-- ==============================
INSERT IGNORE INTO notification_status (name) VALUES ('SENT');
INSERT IGNORE INTO notification_status (name) VALUES ('ON_SCHEDULED');
INSERT IGNORE INTO notification_status (name) VALUES ('FAILED');
INSERT IGNORE INTO notification_status (name) VALUES ('RETRY');
INSERT IGNORE INTO notification_status (name) VALUES ('CANCELLED');


-- ==============================
-- TENANT MASTER DATA (optional)
-- ==============================
INSERT IGNORE INTO tenant (tenant_name, tenant_key, created_at)
VALUES ('DemoTenant', 'demo123', NOW());


-- ==============================
-- Notification Templates for DemoTenant
-- ==============================

-- EMAIL templates
INSERT IGNORE INTO notification_template (tenant_id, channel_id, mode_id, template_body, subject, created_at, updated_at)
VALUES
(1, 1, 1, 'Hello {username}, your OTP is {otp}. It is valid for 10 minutes.', 'Your OTP Code', NOW(), NOW()), -- OTP Email
(1, 1, 1, 'Welcome {username} to our platform! We are excited to have you.', 'Welcome to DemoTenant!', NOW(), NOW()), -- WELCOME Email
(1, 1, 1, 'Hello {username}, your order #{orderId} has been placed successfully.', 'Order Placed', NOW(), NOW()), -- ORDER_PLACED Email
(1, 1, 1, 'Hello {username}, your order #{orderId} has been cancelled.', 'Order Cancelled', NOW(), NOW()), -- ORDER_CANCELLED Email
(1, 1, 1, 'Hello {username}, your transaction #{txnId} of amount {amount} is successful.', 'Transaction Successful', NOW(), NOW()), -- TXN Email
(1, 1, 1, 'Hello {username}, your order #{orderId} has been delivered.', 'Order Delivered', NOW(), NOW()); -- DELIVERED Email

-- SMS templates
INSERT IGNORE INTO notification_template (tenant_id, channel_id, mode_id, template_body, subject, created_at, updated_at)
VALUES
(1, 2, 1, 'Hello {username}, your OTP is {otp}. Valid for 10 mins.', NULL, NOW(), NOW()), -- OTP SMS
(1, 2, 1, 'Welcome {username} to DemoTenant!', NULL, NOW(), NOW()), -- WELCOME SMS
(1, 2, 1, 'Your order #{orderId} has been placed successfully.', NULL, NOW(), NOW()), -- ORDER_PLACED SMS
(1, 2, 1, 'Your order #{orderId} has been cancelled.', NULL, NOW(), NOW()), -- ORDER_CANCELLED SMS
(1, 2, 1, 'Your transaction #{txnId} of {amount} is successful.', NULL, NOW(), NOW()), -- TXN SMS
(1, 2, 1, 'Your order #{orderId} has been delivered.', NULL, NOW(), NOW()); -- DELIVERED SMS

-- PUSH templates
INSERT IGNORE INTO notification_template (tenant_id, channel_id, mode_id, template_body, subject, created_at, updated_at)
VALUES
(1, 3, 1, 'Your OTP is {otp}', NULL, NOW(), NOW()),
(1, 3, 2, 'Welcome {username} to DemoTenant! Check our latest offers.', NULL, NOW(), NOW()),
(1, 3, 2, 'Order #{orderId} has been placed successfully. Track it now.', NULL, NOW(), NOW()),
(1, 3, 2, 'Order #{orderId} was cancelled. Contact support if needed.', NULL, NOW(), NOW()),
(1, 3, 1, 'Transaction #{txnId} completed successfully.', NULL, NOW(), NOW()),
(1, 3, 1, 'Order #{orderId} has been delivered. Enjoy!', NULL, NOW(), NOW());

-- WHATSAPP templates
INSERT IGNORE INTO notification_template (tenant_id, channel_id, mode_id, template_body, subject, created_at, updated_at)
VALUES
(1, 4, 1, 'Hello {username}, your OTP is {otp}.', NULL, NOW(), NOW()),
(1, 4, 2, 'Welcome {username} to DemoTenant! Check our latest deals.', NULL, NOW(), NOW()),
(1, 4, 2, 'Order #{orderId} placed successfully. Track here: {trackingUrl}', NULL, NOW(), NOW()),
(1, 4, 2, 'Order #{orderId} cancelled. Contact support if needed.', NULL, NOW(), NOW()),
(1, 4, 1, 'Transaction #{txnId} of {amount} completed successfully.', NULL, NOW(), NOW()),
(1, 4, 1, 'Order #{orderId} delivered. Enjoy!', NULL, NOW(), NOW());

