select count(*) as total_orders
from orders;
 
 select round(sum(price),2) as total_revenue
 from order_items;
 
 select p.product_category_name, count(oi.order_item_id) as total,
 count(distinct oi.order_id) as unique_orders_placed,
 sum(oi.price) as total_revenue
 from product p
 inner join order_items oi
 on p.product_id = oi.product_id
 where p.product_category_name is not null
 group by p.product_category_name
 order by total_revenue desc
 limit 10;
 
 select date_format(order_purchase_timestamp, '%Y-%m') as month,
 count(order_id) as total_orders
 from orders
 group by month
 order by month;
 
 select round(avg(review_score), 2) as avg_review
 from review;
 
 select payment_type, count(*) as usage_count
 from payment
 group by payment_type
 order by usage_count desc;
 
 select r.review_score,
 count(*) as total_reviews
 from orders o 
 join review r 
 on o.order_id = r.order_id
 where o.order_delivered_customer_date > o.order_estimated_delivery_date
 group by r.review_score
 order by r.review_score;
 
 select c.customer_state, round(sum(oi.price),2) as revenue
 from orders o 
 join customers c 
 on o.customer_id = c.customer_id
 join order_items oi
 on o.order_id = oi.order_id
 group by c.customer_state
 order by revenue desc;