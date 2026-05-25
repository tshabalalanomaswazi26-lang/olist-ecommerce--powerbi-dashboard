drop database olist_ecommerce;
create database olist_ecommerce;

use olist_ecommerce;

create table customers (
customer_id varchar(50) primary key,
customer_unique_id varchar(50),
customer_zip_code_prefix int,
customer_city varchar(50),
customer_state varchar(10)
);

create table orders (
order_id varchar(50) primary key,
customer_id varchar(50),
order_status varchar(30),
order_purchase_timestamp datetime,
order_approved_at varchar(50),
order_delivered_carrier_date varchar(50),
order_delivered_customer_date varchar(50),
order_estimated_delivery_date datetime);

create table order_items (
order_id varchar(50),
order_item_id int,
product_id varchar(50),
seller_id varchar(50),
shipping_limit_date datetime,
price decimal(10, 2),
freight_value decimal(10, 2),
primary key (order_id, order_item_id));

create table payment (
order_id varchar(50) primary key,
payment_sequential int,
payment_type varchar(50),
payment_installments int,
payment_value decimal(10, 2));

create table review (
review_id varchar(50),
order_id varchar(50) primary key,
review_score int,
review_comment_title varchar(50),
review_comment_message varchar(200),
review_creation_date datetime,
review_answer_timestamp datetime);

create table product (
product_id varchar(50),
product_category_name varchar(50),
product_name_length int,
product_description_length int,
product_photos_qty int,
product_weight_g int,
product_length_cm int,
product_height_cm int,
product_width_cm int);




