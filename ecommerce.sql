-- Brand table stores information about product brands
CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Product category table classifies products into categories
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Product table contains general product information
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10,2),
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- Stores URLs of images associated with products
CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Defines available product colors
CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Defines different size categories (e.g., clothing, shoes)
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Lists size options under specific size categories
CREATE TABLE size_option (
    size_option_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT,
    value VARCHAR(50) NOT NULL,
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- Represents sellable product units differentiated by size and color
CREATE TABLE product_item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_option_id INT,
    stock INT DEFAULT 0,
    price DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id)
);

-- Defines different types of attributes (e.g., technical, descriptive)
CREATE TABLE attribute_type (
    type_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Groups attributes into logical categories (e.g., material, usage)
CREATE TABLE attribute_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Stores attribute name-value pairs for a product
CREATE TABLE product_attribute (
    attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    category_id INT,
    type_id INT,
    name VARCHAR(100) NOT NULL,
    value TEXT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (category_id) REFERENCES attribute_category(category_id),
    FOREIGN KEY (type_id) REFERENCES attribute_type(type_id)
);

-- (Optional) Defines variations of a product by size and color, may overlap with product_item
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_option_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id)
);
