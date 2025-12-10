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
INSERT IGNORE INTO notification_template
(tenant_id, channel_id, mode_id, template_key, template_body, subject, variables_json, created_at, updated_at)
VALUES
(1, 1, 1, 'OTP', 'Hello {username}, your OTP is {otp}. It is valid for 10 minutes.', 'Your OTP Code', '["username","otp"]', NOW(), NOW()),
(1, 1, 1, 'WELCOME', 'Welcome {username} to our platform! We are excited to have you.', 'Welcome to DemoTenant!', '["username"]', NOW(), NOW()),
(1, 1, 1, 'ORDER_PLACED', 'Hello {username}, your order #{orderId} has been placed successfully.', 'Order Placed', '["username","orderId"]', NOW(), NOW()),
(1, 1, 1, 'ORDER_CANCELLED', 'Hello {username}, your order #{orderId} has been cancelled.', 'Order Cancelled', '["username","orderId"]', NOW(), NOW()),
(1, 1, 1, 'TXN_SUCCESS', 'Hello {username}, your transaction #{txnId} of amount {amount} is successful.', 'Transaction Successful', '["username","txnId","amount"]', NOW(), NOW()),
(1, 1, 1, 'ORDER_DELIVERED', 'Hello {username}, your order #{orderId} has been delivered.', 'Order Delivered', '["username","orderId"]', NOW(), NOW());

-- SMS templates
INSERT IGNORE INTO notification_template
(tenant_id, channel_id, mode_id, template_key, template_body, subject, variables_json, created_at, updated_at)
VALUES
(1, 2, 1, 'OTP', 'Hello {username}, your OTP is {otp}. Valid for 10 mins.', NULL, '["username","otp"]', NOW(), NOW()),
(1, 2, 1, 'WELCOME', 'Welcome {username} to DemoTenant!', NULL, '["username"]', NOW(), NOW()),
(1, 2, 1, 'ORDER_PLACED', 'Your order #{orderId} has been placed successfully.', NULL, '["orderId"]', NOW(), NOW()),
(1, 2, 1, 'ORDER_CANCELLED', 'Your order #{orderId} has been cancelled.', NULL, '["orderId"]', NOW(), NOW()),
(1, 2, 1, 'TXN_SUCCESS', 'Your transaction #{txnId} of {amount} is successful.', NULL, '["txnId","amount"]', NOW(), NOW()),
(1, 2, 1, 'ORDER_DELIVERED', 'Your order #{orderId} has been delivered.', NULL, '["orderId"]', NOW(), NOW());

-- PUSH templates
INSERT IGNORE INTO notification_template
(tenant_id, channel_id, mode_id, template_key, template_body, subject, variables_json, created_at, updated_at)
VALUES
(1, 3, 1, 'OTP', 'Your OTP is {otp}', NULL, '["otp"]', NOW(), NOW()),
(1, 3, 2, 'WELCOME', 'Welcome {username} to DemoTenant! Check our latest offers.', NULL, '["username"]', NOW(), NOW()),
(1, 3, 2, 'ORDER_PLACED', 'Order #{orderId} has been placed successfully. Track it now.', NULL, '["orderId"]', NOW(), NOW()),
(1, 3, 2, 'ORDER_CANCELLED', 'Order #{orderId} was cancelled. Contact support if needed.', NULL, '["orderId"]', NOW(), NOW()),
(1, 3, 1, 'TXN_SUCCESS', 'Transaction #{txnId} completed successfully.', NULL, '["txnId"]', NOW(), NOW()),
(1, 3, 1, 'ORDER_DELIVERED', 'Order #{orderId} has been delivered. Enjoy!', NULL, '["orderId"]', NOW(), NOW());

-- WHATSAPP templates
INSERT IGNORE INTO notification_template
(tenant_id, channel_id, mode_id, template_key, template_body, subject, variables_json, created_at, updated_at)
VALUES
(1, 4, 1, 'OTP', 'Hello {username}, your OTP is {otp}.', NULL, '["username","otp"]', NOW(), NOW()),
(1, 4, 2, 'WELCOME', 'Welcome {username} to DemoTenant! Check our latest deals.', NULL, '["username"]', NOW(), NOW()),
(1, 4, 2, 'ORDER_PLACED', 'Order #{orderId} placed successfully. Track here: {trackingUrl}', NULL, '["orderId","trackingUrl"]', NOW(), NOW()),
(1, 4, 2, 'ORDER_CANCELLED', 'Order #{orderId} cancelled. Contact support if needed.', NULL, '["orderId"]', NOW(), NOW()),
(1, 4, 1, 'TXN_SUCCESS', 'Transaction #{txnId} of {amount} completed successfully.', NULL, '["txnId","amount"]', NOW(), NOW()),
(1, 4, 1, 'ORDER_DELIVERED', 'Order #{orderId} delivered. Enjoy!', NULL, '["orderId"]', NOW(), NOW());

