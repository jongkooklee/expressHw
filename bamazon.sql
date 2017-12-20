DROP DATABASE IF EXISTS bamazonDB;
CREATE database bamazonDB;

USE bamazonDB;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(30) NULL,
  department_name VARCHAR(30) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mouse", "Computer", 30, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Keyboard", "Computer", 50, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tshirt", "Apparel", 20, 15);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Jeans", "Apparel", 50, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Beer", "Food", 5, 8);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Pizza", "Food", 3, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Chips", "Food", 7, 14);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tylenol", "Medicine", 25, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Peptobismol", "Medicine", 30, 8);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Nerf Gun", "Toys", 9, 10);
