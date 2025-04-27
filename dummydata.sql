-- Brands
INSERT INTO brands (name) VALUES 
('iPhone'),
('Samsung'),
('Huawei'),
('Itel'),
('Xiaomi');

-- Categories
INSERT INTO categories (name, description) VALUES
('Smartphones', 'Mobile phones with advanced computing capability'),
('Feature Phones', 'Basic mobile phones with limited features'),
('Accessories', 'Phone cases, chargers, and other accessories'),
('Tablets', 'Portable touchscreen computers'),
('Wearables', 'Smartwatches and fitness trackers');

-- Products for iPhone
INSERT INTO products (brand_id, name, base_price, description) VALUES
(1, 'iPhone 13', 999.99, 'The latest iPhone with A15 Bionic chip'),
(1, 'iPhone 13 Pro', 1199.99, 'Pro version with enhanced camera system'),
(1, 'iPhone 12', 799.99, 'Previous generation iPhone with A14 chip'),
(1, 'iPhone SE', 399.99, 'Affordable iPhone with powerful features');

-- Products for Samsung
INSERT INTO products (brand_id, name, base_price, description) VALUES
(2, 'Galaxy S22', 899.99, 'Samsung flagship with Exynos processor'),
(2, 'Galaxy A53', 449.99, 'Mid-range phone with great battery life'),
(2, 'Galaxy Z Flip', 999.99, 'Foldable smartphone with unique design'),
(2, 'Galaxy Note 20', 849.99, 'Phablet with S Pen stylus');

-- Products for Huawei
INSERT INTO products (brand_id, name, base_price, description) VALUES
(3, 'P50 Pro', 899.99, 'Premium Huawei phone with Leica camera'),
(3, 'Nova 9', 499.99, 'Mid-range phone with sleek design'),
(3, 'Y7', 199.99, 'Budget-friendly smartphone');

-- Products for Itel
INSERT INTO products (brand_id, name, base_price, description) VALUES
(4, 'A58', 99.99, 'Entry-level smartphone with dual camera'),
(4, 'P38', 129.99, 'Budget phone with large battery'),
(4, 'S17', 149.99, 'Affordable smartphone with HD+ display');

-- Products for Xiaomi
INSERT INTO products (brand_id, name, base_price, description) VALUES
(5, 'Redmi Note 11', 249.99, 'Feature-packed mid-range phone'),
(5, 'Mi 11 Lite', 299.99, 'Slim and lightweight smartphone'),
(5, 'Poco X4', 199.99, 'High-performance budget phone');

-- Product Categories
INSERT INTO product_categories (product_id, category_id) VALUES
(1, 1), (2, 1), (3, 1), (4, 1), -- iPhone products in Smartphones
(5, 1), (6, 1), (7, 1), (8, 1), -- Samsung products in Smartphones
(9, 1), (10, 1), (11, 1), -- Huawei products in Smartphones
(12, 1), (13, 1), (14, 1), -- Itel products in Smartphones
(15, 1), (16, 1), (17, 1); -- Xiaomi products in Smartphones

-- Product Variants for iPhone
INSERT INTO product_variants (product_id, color, storage, ram, sku, price_override) VALUES
(1, 'Black', '128GB', '4GB', 'IP13-BLK-128', NULL),
(1, 'White', '128GB', '4GB', 'IP13-WHT-128', NULL),
(1, 'Blue', '256GB', '4GB', 'IP13-BLU-256', 1099.99),
(2, 'Graphite', '256GB', '6GB', 'IP13P-GRA-256', NULL),
(2, 'Gold', '512GB', '6GB', 'IP13P-GLD-512', 1299.99),
(3, 'Purple', '128GB', '4GB', 'IP12-PUR-128', NULL),
(3, 'Red', '64GB', '4GB', 'IP12-RED-64', 749.99),
(4, 'Black', '64GB', '3GB', 'IPSE-BLK-64', NULL);

-- Product Variants for Samsung
INSERT INTO product_variants (product_id, color, storage, ram, sku, price_override) VALUES
(5, 'Phantom Black', '128GB', '8GB', 'SS22-BLK-128', NULL),
(5, 'Phantom White', '256GB', '8GB', 'SS22-WHT-256', 949.99),
(6, 'Awesome Blue', '128GB', '6GB', 'SA53-BLU-128', NULL),
(6, 'Awesome Black', '64GB', '4GB', 'SA53-BLK-64', 399.99),
(7, 'Cream', '256GB', '8GB', 'SZFL-CRM-256', NULL),
(8, 'Mystic Bronze', '256GB', '8GB', 'SN20-BRZ-256', NULL);

-- Product Variants for Huawei
INSERT INTO product_variants (product_id, color, storage, ram, sku, price_override) VALUES
(9, 'Black', '256GB', '8GB', 'HP50P-BLK-256', NULL),
(9, 'Gold', '128GB', '8GB', 'HP50P-GLD-128', 849.99),
(10, 'Starry Blue', '128GB', '6GB', 'HN9-BLU-128', NULL),
(11, 'Midnight Black', '64GB', '4GB', 'HY7-BLK-64', NULL);

-- Product Variants for Itel
INSERT INTO product_variants (product_id, color, storage, ram, sku, price_override) VALUES
(12, 'Gradation Green', '32GB', '2GB', 'IA58-GRN-32', NULL),
(12, 'Gradation Purple', '32GB', '2GB', 'IA58-PUR-32', NULL),
(13, 'Deep Blue', '32GB', '2GB', 'IP38-BLU-32', NULL),
(14, 'Sky Blue', '32GB', '3GB', 'IS17-BLU-32', NULL);

-- Product Variants for Xiaomi
INSERT INTO product_variants (product_id, color, storage, ram, sku, price_override) VALUES
(15, 'Graphite Gray', '128GB', '6GB', 'XRN11-GRY-128', NULL),
(15, 'Star Blue', '64GB', '4GB', 'XRN11-BLU-64', 229.99),
(16, 'Citrus Yellow', '128GB', '6GB', 'XM11L-YLW-128', NULL),
(17, 'Power Black', '128GB', '6GB', 'XPOX4-BLK-128', NULL);

-- Warehouses in African locations
INSERT INTO warehouses (name, location) VALUES
('Nairobi Warehouse', 'Nairobi, Kenya'),
('Lagos Hub', 'Lagos, Nigeria'),
('Cairo Distribution Center', 'Cairo, Egypt'),
('Johannesburg Facility', 'Johannesburg, South Africa'),
('Accra Storage', 'Accra, Ghana');

-- Inventory for iPhone variants across warehouses
INSERT INTO inventory (variant_id, warehouse_id, stock_quantity) VALUES
(1, 1, 50), (1, 2, 35), (1, 4, 45),
(2, 1, 40), (2, 3, 25), (2, 4, 35),
(3, 1, 30), (3, 2, 20), (3, 4, 25),
(4, 1, 25), (4, 2, 15), (4, 4, 20),
(5, 1, 20), (5, 3, 10), (5, 4, 15),
(6, 1, 45), (6, 2, 30), (6, 4, 35),
(7, 1, 50), (7, 3, 40), (7, 4, 45),
(8, 1, 60), (8, 2, 50), (8, 4, 55);

-- Inventory for Samsung variants across warehouses
INSERT INTO inventory (variant_id, warehouse_id, stock_quantity) VALUES
(9, 1, 55), (9, 2, 45), (9, 4, 50),
(10, 1, 40), (10, 3, 30), (10, 4, 35),
(11, 1, 60), (11, 2, 50), (11, 4, 55),
(12, 1, 70), (12, 3, 60), (12, 4, 65),
(13, 1, 30), (13, 2, 20), (13, 4, 25),
(14, 1, 35), (14, 3, 25), (14, 4, 30);

-- Inventory for Huawei variants across warehouses
INSERT INTO inventory (variant_id, warehouse_id, stock_quantity) VALUES
(15, 1, 45), (15, 2, 35), (15, 4, 40),
(16, 1, 35), (16, 3, 25), (16, 4, 30),
(17, 1, 55), (17, 2, 45), (17, 4, 50),
(18, 1, 65), (18, 3, 55), (18, 4, 60);

-- Inventory for Itel variants across warehouses
INSERT INTO inventory (variant_id, warehouse_id, stock_quantity) VALUES
(19, 1, 100), (19, 2, 90), (19, 4, 95),
(20, 1, 90), (20, 3, 80), (20, 4, 85),
(21, 1, 110), (21, 2, 100), (21, 4, 105),
(22, 1, 95), (22, 3, 85), (22, 4, 90);

-- Inventory for Xiaomi variants across warehouses
INSERT INTO inventory (variant_id, warehouse_id, stock_quantity) VALUES
(23, 1, 75), (23, 2, 65), (23, 4, 70),
(24, 1, 85), (24, 3, 75), (24, 4, 80),
(25, 1, 70), (25, 2, 60), (25, 4, 65),
(26, 1, 80), (26, 3, 70), (26, 4, 75);

-- Inventory movements
INSERT INTO inventory_movements (variant_id, warehouse_id, change_type, quantity, reference, created_at) VALUES
(1, 1, 'restock', 50, 'PO-12345', '2025-03-15 09:30:00'),
(2, 1, 'restock', 40, 'PO-12345', '2025-03-15 09:35:00'),
(9, 2, 'restock', 45, 'PO-12346', '2025-03-16 10:15:00'),
(15, 4, 'restock', 40, 'PO-12347', '2025-03-17 11:20:00'),
(19, 3, 'restock', 80, 'PO-12348', '2025-03-18 14:10:00'),
(23, 1, 'restock', 75, 'PO-12349', '2025-03-19 15:25:00'),
(1, 1, 'sale', -5, 'ORD-78901', '2025-04-01 13:45:00'),
(9, 2, 'sale', -3, 'ORD-78902', '2025-04-02 11:30:00'),
(19, 3, 'sale', -10, 'ORD-78903', '2025-04-03 16:20:00'),
(15, 4, 'return', 1, 'RET-56789', '2025-04-10 09:15:00');

-- Roles
INSERT INTO roles (name, permissions) VALUES
('Admin', 'all'),
('Manager', 'products,inventory,orders,customers,reports'),
('Sales', 'products,orders,customers'),
('Support', 'orders,customers'),
('Customer', 'own_orders,own_profile');

-- Users 
INSERT INTO users (email, password_hash, role_id, created_at) VALUES
('admin@afrocell.com', SHA2('admin123', 256), 1, '2024-01-15 08:00:00'),
('manager@afrocell.com', SHA2('manager123', 256), 2, '2024-01-20 09:30:00'),
('sales1@afrocell.com', SHA2('sales123', 256), 3, '2024-02-01 10:15:00'),
('support@afrocell.com', SHA2('support123', 256), 4, '2024-02-10 11:45:00'),
('john.doe@gmail.com', SHA2('password123', 256), 5, '2024-03-01 13:20:00'),
('mary.smith@yahoo.com', SHA2('mary2024', 256), 5, '2024-03-05 14:30:00'),
('robert.johnson@hotmail.com', SHA2('robert123', 256), 5, '2024-03-10 15:45:00'),
('sarah.williams@gmail.com', SHA2('sarah2024', 256), 5, '2024-03-15 16:20:00'),
('michael.brown@yahoo.com', SHA2('michael123', 256), 5, '2024-03-20 10:10:00');

-- Customers
INSERT INTO customers (user_id, full_name, phone_number, date_of_birth) VALUES
(5, 'John Doe', '+254712345678', '1985-06-12'),
(6, 'Mary Smith', '+234809876543', '1990-04-23'),
(7, 'Robert Johnson', '+27631234567', '1982-09-17'),
(8, 'Sarah Williams', '+20112345678', '1995-11-30'),
(9, 'Michael Brown', '+233541234567', '1988-02-22');

-- Addresses for customers
INSERT INTO addresses (customer_id, label, address_line1, address_line2, city, state, postal_code, country, is_default) VALUES
(1, 'Home', '123 Kimathi Street', 'Apartment 4B', 'Nairobi', 'Nairobi County', '00100', 'Kenya', TRUE),
(1, 'Work', '456 Kenyatta Avenue', 'Floor 3', 'Nairobi', 'Nairobi County', '00200', 'Kenya', FALSE),
(2, 'Home', '789 Victoria Island', NULL, 'Lagos', 'Lagos State', '101233', 'Nigeria', TRUE),
(3, 'Home', '321 Nelson Mandela Blvd', 'Unit 7', 'Johannesburg', 'Gauteng', '2000', 'South Africa', TRUE),
(4, 'Home', '654 El Tahrir Square', 'Building 12', 'Cairo', 'Cairo Governorate', '11511', 'Egypt', TRUE),
(5, 'Home', '987 Independence Avenue', NULL, 'Accra', 'Greater Accra', '23321', 'Ghana', TRUE);

-- Payment methods
INSERT INTO user_payment_methods (customer_id, method_type, details_encrypted, is_default, created_at) VALUES
(1, 'M-Pesa', 'ENCRYPTED:mpesa-details', TRUE, '2024-03-02 10:30:00'),
(1, 'Credit Card', 'ENCRYPTED:card-details-1', FALSE, '2024-03-03 11:45:00'),
(2, 'Bank Transfer', 'ENCRYPTED:bank-details-1', TRUE, '2024-03-06 09:15:00'),
(3, 'Credit Card', 'ENCRYPTED:card-details-2', TRUE, '2024-03-11 14:20:00'),
(4, 'Fawry', 'ENCRYPTED:fawry-details', TRUE, '2024-03-16 15:30:00'),
(5, 'Mobile Money', 'ENCRYPTED:mtn-momo-details', TRUE, '2024-03-21 12:40:00');

-- African region tax rates
INSERT INTO taxes (region, rate_percent) VALUES
('Kenya', 16.00),
('Nigeria', 7.50),
('South Africa', 15.00),
('Egypt', 14.00),
('Ghana', 12.50);

-- Discounts
INSERT INTO discounts (name, discount_type, value, start_date, end_date, applies_to, target_id, active) VALUES
('New Customer', 'percentage', 10.00, '2025-04-01', '2025-06-30', 'product', 1, TRUE),
('Easter Sale', 'percentage', 15.00, '2025-03-25', '2025-04-10', 'category', 1, TRUE),
('Clearance', 'fixed', 50.00, '2025-04-15', '2025-05-15', 'variant', 7, TRUE),
('Flash Sale', 'percentage', 20.00, '2025-04-20', '2025-04-22', 'product', 5, TRUE),
('Bundle Discount', 'fixed', 30.00, '2025-04-01', '2025-05-31', 'category', 3, TRUE);

-- Shipping methods relevant to African market
INSERT INTO shipping_methods (name, estimated_days, base_cost) VALUES
('Standard Delivery', 5, 9.99),
('Express Delivery', 2, 19.99),
('Same Day Delivery', 0, 29.99),
('Rural Delivery', 7, 14.99),
('International', 10, 39.99);

-- Shipping zones for African regions
INSERT INTO shipping_zones (name, countries_covered) VALUES
('East Africa', 'KE,TZ,UG,RW,BI'),
('West Africa', 'NG,GH,CI,SN,BJ'),
('North Africa', 'EG,MA,TN,DZ,LY'),
('Southern Africa', 'ZA,NA,BW,ZW,MZ'),
('Central Africa', 'CM,CD,CG,GA,CF');

-- Orders
INSERT INTO orders (customer_id, shipping_address_id, billing_address_id, order_total, discount_applied, tax_applied, final_total, status, created_at) VALUES
(1, 1, 1, 999.99, 0.00, 160.00, 1159.99, 'delivered', '2025-03-05 14:30:00'),
(2, 3, 3, 899.99, 90.00, 60.75, 870.74, 'shipped', '2025-03-12 11:45:00'),
(3, 4, 4, 199.99, 0.00, 30.00, 229.99, 'delivered', '2025-03-18 09:20:00'),
(4, 5, 5, 249.99, 50.00, 28.00, 227.99, 'processing', '2025-04-01 16:15:00'),
(1, 1, 1, 449.99, 45.00, 64.80, 469.79, 'pending', '2025-04-15 10:30:00');

-- Order items
INSERT INTO order_items (order_id, variant_id, quantity, price_at_purchase) VALUES
(1, 1, 1, 999.99),
(2, 9, 1, 899.99),
(3, 18, 1, 199.99),
(4, 23, 1, 249.99),
(5, 11, 1, 449.99);

-- Order status history
INSERT INTO order_status_history (order_id, status, changed_at) VALUES
(1, 'pending', '2025-03-05 14:30:00'),
(1, 'processing', '2025-03-05 15:45:00'),
(1, 'shipped', '2025-03-06 09:30:00'),
(1, 'delivered', '2025-03-09 11:20:00'),
(2, 'pending', '2025-03-12 11:45:00'),
(2, 'processing', '2025-03-12 14:20:00'),
(2, 'shipped', '2025-03-13 10:15:00'),
(3, 'pending', '2025-03-18 09:20:00'),
(3, 'processing', '2025-03-18 11:30:00'),
(3, 'shipped', '2025-03-19 08:45:00'),
(3, 'delivered', '2025-03-22 14:30:00'),
(4, 'pending', '2025-04-01 16:15:00'),
(4, 'processing', '2025-04-02 10:20:00'),
(5, 'pending', '2025-04-15 10:30:00');

-- Payments
INSERT INTO payments (order_id, amount, method, status, transaction_reference, paid_at) VALUES
(1, 1159.99, 'M-Pesa', 'completed', 'TXN-MPESA-123456', '2025-03-05 14:35:00'),
(2, 870.74, 'Bank Transfer', 'completed', 'TXN-BANK-789012', '2025-03-12 12:00:00'),
(3, 229.99, 'Credit Card', 'completed', 'TXN-CARD-345678', '2025-03-18 09:25:00'),
(4, 227.99, 'Fawry', 'completed', 'TXN-FAWRY-901234', '2025-04-01 16:20:00'),
(5, 469.79, 'M-Pesa', 'pending', 'TXN-MPESA-567890', NULL);

-- Shipments
INSERT INTO shipments (order_id, shipping_method_id, shipped_at, delivered_at) VALUES
(1, 2, '2025-03-06 09:30:00', '2025-03-09 11:20:00'),
(2, 1, '2025-03-13 10:15:00', NULL),
(3, 1, '2025-03-19 08:45:00', '2025-03-22 14:30:00');

-- Tracking events
INSERT INTO tracking_events (shipment_id, status, timestamp, location) VALUES
(1, 'Package received', '2025-03-06 09:30:00', 'Nairobi Hub'),
(1, 'In transit', '2025-03-07 11:45:00', 'Nairobi Distribution Center'),
(1, 'Out for delivery', '2025-03-09 08:30:00', 'Nairobi Local Courier'),
(1, 'Delivered', '2025-03-09 11:20:00', 'Customer Address'),
(2, 'Package received', '2025-03-13 10:15:00', 'Lagos Hub'),
(2, 'In transit', '2025-03-14 13:20:00', 'Lagos Distribution Center'),
(2, 'In transit', '2025-03-15 09:45:00', 'Victoria Island Station'),
(3, 'Package received', '2025-03-19 08:45:00', 'Johannesburg Hub'),
(3, 'In transit', '2025-03-20 10:30:00', 'Johannesburg Distribution Center'),
(3, 'Out for delivery', '2025-03-22 09:15:00', 'Local Courier'),
(3, 'Delivered', '2025-03-22 14:30:00', 'Customer Address');

-- Product images
INSERT INTO product_images (product_id, image_url, alt_text, is_main) VALUES
(1, 'https://example.com/images/iphone13-black.jpg', 'iPhone 13 in Black', TRUE),
(1, 'https://example.com/images/iphone13-white.jpg', 'iPhone 13 in White', FALSE),
(1, 'https://example.com/images/iphone13-blue.jpg', 'iPhone 13 in Blue', FALSE),
(5, 'https://example.com/images/galaxys22-black.jpg', 'Galaxy S22 in Phantom Black', TRUE),
(9, 'https://example.com/images/p50pro-black.jpg', 'P50 Pro in Black', TRUE),
(12, 'https://example.com/images/a58-green.jpg', 'Itel A58 in Gradation Green', TRUE),
(15, 'https://example.com/images/redminote11-gray.jpg', 'Redmi Note 11 in Graphite Gray', TRUE);

-- Specifications for iPhone 13
INSERT INTO specifications (product_id, `key`, `value`) VALUES
(1, 'Display', '6.1-inch Super Retina XDR'),
(1, 'Processor', 'A15 Bionic chip'),
(1, 'Camera', '12MP dual-camera system'),
(1, 'Battery', 'Up to 19 hours video playback'),
(1, 'Operating System', 'iOS 15');

-- Specifications for Galaxy S22
INSERT INTO specifications (product_id, `key`, `value`) VALUES
(5, 'Display', '6.1-inch Dynamic AMOLED 2X'),
(5, 'Processor', 'Exynos 2200'),
(5, 'Camera', '50MP triple camera system'),
(5, 'Battery', '3700mAh'),
(5, 'Operating System', 'Android 12');

-- Specifications for P50 Pro
INSERT INTO specifications (product_id, `key`, `value`) VALUES
(9, 'Display', '6.6-inch OLED'),
(9, 'Processor', 'Snapdragon 888'),
(9, 'Camera', '50MP Leica quad camera system'),
(9, 'Battery', '4360mAh'),
(9, 'Operating System', 'EMUI 12');

-- Specifications for Itel A58
INSERT INTO specifications (product_id, `key`, `value`) VALUES
(12, 'Display', '6.6-inch HD+'),
(12, 'Processor', 'Quad-core 1.3GHz'),
(12, 'Camera', '8MP dual camera'),
(12, 'Battery', '4000mAh'),
(12, 'Operating System', 'Android 11 (Go Edition)');

-- Specifications for Redmi Note 11
INSERT INTO specifications (product_id, `key`, `value`) VALUES
(15, 'Display', '6.43-inch AMOLED'),
(15, 'Processor', 'Snapdragon 680'),
(15, 'Camera', '50MP quad camera'),
(15, 'Battery', '5000mAh'),
(15, 'Operating System', 'MIUI 13 based on Android 11');

-- Product reviews
INSERT INTO product_reviews (product_id, customer_id, rating, review, created_at) VALUES
(1, 1, 5, 'Excellent phone, great camera quality and battery life!', '2025-03-20 15:45:00'),
(5, 2, 4, 'Good performance but battery could be better.', '2025-03-25 11:30:00'),
(9, 3, 5, 'The camera quality is amazing! Best phone I\'ve owned.', '2025-03-30 14:20:00'),
(12, 4, 3, 'Good budget option but a bit slow sometimes.', '2025-04-05 16:10:00'),
(15, 5, 4, 'Great value for money. Battery lasts for days!', '2025-04-10 09:45:00');

-- Wishlists
INSERT INTO wishlists (customer_id, created_at) VALUES
(1, '2025-03-10 10:30:00'),
(2, '2025-03-15 11:45:00'),
(3, '2025-03-22 13:20:00'),
(4, '2025-04-02 14:15:00'),
(5, '2025-04-12 09:30:00');

-- Wishlist items
INSERT INTO wishlist_items (wishlist_id, variant_id) VALUES
(1, 5),
(1, 9),
(2, 16),
(3, 23),
(4, 13),
(5, 18);

-- Audit logs
INSERT INTO audit_logs (user_id, action, entity_type, entity_id, timestamp, ip_address) VALUES
(1, 'created', 'product', 1, '2025-01-20 09:45:00', '192.168.1.100'),
(1, 'updated', 'product', 5, '2025-01-25 14:30:00', '192.168.1.100'),
(2, 'created', 'order', 1, '2025-03-05 14:30:00', '192.168.1.101'),
(3, 'updated', 'order', 1, '2025-03-09 11:20:00', '192.168.1.102'),
(1, 'deleted', 'discount', 3, '2025-04-16 10:15:00', '192.168.1.100');

-- Settings
INSERT INTO settings (`key`, `value`, description) VALUES
('site_name', 'AfroCell', 'The name of the e-commerce site'),
('currency', 'USD', 'Default currency for the store'),
('business_email', 'info@afrocell.com', 'Main business contact email'),
('support_phone', '+254712345678', 'Customer support phone number'),
('enable_reviews', 'true', 'Whether product reviews are enabled'),
('maintenance_mode', 'false', 'Whether the site is in maintenance mode');