
USE olist_analysis_ecommerce;

/* Resultado obtido:

Total de pedidos cancelados: 625

Cancelados com entrega registrada: 6

Interpretação:

A maioria dos cancelados não gerou entrega, como esperado.

Porém, 6 pedidos aparecem como cancelados e entregues, 
passando por todas as etapas (pagamento aprovado, separação, envio e entrega).

Isso indica uma inconsistência nos dados, possivelmente causada por:

Erro humano na atualização do status.

Falha de integração entre sistemas (financeiro vs logístico).

Cancelamento após entrega (estorno ou devolução).

Decisão analítica:

Para cálculo de faturamento, considerar apenas pedidos com 
order_status = delivered.

Os 6 casos foram tratados como outliers e documentados, 
sem impacto significativo no resultado final.*/

SELECT 
    COUNT(*) AS total_cancelados,
    COUNT(delivery_time) AS cancelados_com_entrega
FROM orders_payments_analysis
WHERE order_status = 'canceled';


