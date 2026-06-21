/* Ticket Médio Por Cliente */

SELECT order_status, AVG(payment_value) AS ticket_medio
FROM orders_payments_analysis
GROUP BY order_status;

/* Distribuição de formas de pagamento nos pedidos entregues */

SELECT payment_type, COUNT(*) AS total_entregue
FROM orders_payments_analysis
WHERE order_status = "delivered"
GROUP BY payment_type;


/* Proporção de pedidos cancelados */

SELECT 
	COUNT(CASE WHEN order_status = "canceled" THEN 1 END)/COUNT(*) * 100 AS percent_cancel
FROM orders_payments_analysis;

/* Isso confirma que:

A maioria dos cancelamentos acontece antes do pagamento
(por isso, no dataset bruto, a proporção era ~7,5%).

Quando o pagamento já está registrado, 
o risco de cancelamento cai drasticamente para 0,64%.*/

