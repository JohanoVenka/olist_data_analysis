# 📊 Olist Payments Analysis

## 📌 Sobre o Projeto
Este projeto apresenta uma análise exploratória dos dados de pagamentos do e-commerce **Olist**, utilizando **Python, Pandas e SQL**, com foco em:
- Qualidade dos dados  
- Comportamento de pagamento dos clientes  
- Geração de insights de negócio  

Foram aplicadas etapas de **ETL (Extração, Transformação e Carga)**, limpeza dos dados, análise estatística e geração de recomendações de negócio.

---

## 🎯 Objetivos
- **Compreender** o perfil de pagamentos dos clientes  
- **Identificar** os métodos de pagamento mais utilizados  
- **Analisar** padrões de parcelamento  
- **Detectar** inconsistências e problemas de qualidade dos dados  
- **Gerar** recomendações de negócio baseadas nos resultados  

---

## 🛠️ Tecnologias Utilizadas
- Pandas  
- Matplotlib  
- Seaborn  
- SQLAlchemy  
- PyMySQL  
- Jupyter Notebook  
- Python 3.11.2  
- MySQL Workbench 8.0  
- VS Code  

---

## 📂 Dataset
Foram utilizados os seguintes datasets:
- `olist_order_payments_dataset.csv`  
- `olist_orders_dataset.csv`  

As tabelas foram integradas para permitir análises mais completas sobre pagamentos e pedidos da plataforma Olist.

**Principais campos analisados:**

| Coluna               | Descrição                               |
| -------------------- | --------------------------------------- |
| order_id             | Identificador único do pedido           |
| payment_sequential   | Sequência do pagamento dentro do pedido |
| payment_type         | Método de pagamento utilizado           |
| payment_installments | Quantidade de parcelas                  |
| payment_value        | Valor pago                              |

---

## 🔄 Processo ETL

### 1. Extração
- Importação do dataset CSV utilizando Pandas  
- Verificação da estrutura inicial dos dados  

### 2. Transformação
- Verificação de tipos de dados  
- Busca por valores ausentes  
- Análise de registros duplicados  
- Tratamento e validação das informações  
- Análise de valores extremos  
- Criação de métricas descritivas  

### 3. Carga
- Integração dos dados em ambiente MySQL utilizando SQLAlchemy  
- Criação de consultas SQL para validação e exploração dos dados  
- Utilização dos dados tratados para análises exploratórias e geração de insights  

---

## 📊 Análise Exploratória

### Métodos de Pagamento
Principais observações:
- Predominância do **cartão de crédito**  
- Presença de **boleto bancário** como segunda opção mais utilizada  
- Métodos digitais com participação menor na base histórica  

### Parcelamento
Principais observações:
- A maioria dos pedidos ocorre em **pagamento único**  
- Existem pedidos com elevado número de parcelas  
- Casos extremos exigem atenção para avaliação de risco financeiro  

### Qualidade dos Dados
- Ausência de valores nulos relevantes  
- Existência de registros repetidos que exigiram investigação  
- Validação dos tipos de dados para garantir consistência  

---

## 💡 Principais Insights
1. O **cartão de crédito** concentra a maior parte das transações  
2. Grande parte dos clientes prefere **pagamentos à vista** ou com baixo número de parcelas  
3. Existem casos específicos com **parcelamentos muito elevados**, indicando possíveis riscos  

---

## 📈 Recomendações de Negócio

1. **Incentivar pagamentos à vista**  
   - Criar campanhas de desconto para reduzir custos operacionais e riscos financeiros  
   - Baseado na predominância de cartão de crédito e baixa adesão a parcelamentos longos  

2. **Monitorar parcelamentos elevados**  
   - Acompanhar pedidos com muitas parcelas para avaliar inadimplência e perfil de risco  
   - Casos extremos identificados na análise sugerem necessidade de controle adicional  

3. **Expandir métodos digitais**  
   - Incentivar o uso de meios digitais para reduzir custos transacionais  
   - Apesar da baixa participação atual, pode ser uma oportunidade de crescimento  

4. **Revisar processos de cancelamento**  
   - Foram identificados pedidos cancelados que chegaram a ser entregues, indicando falhas de controle  
   - Reforçar políticas e sistemas internos para evitar perdas e inconsistências  

5. **Otimizar logística em períodos críticos**  
   - Novembro (Black Friday) concentra picos de vendas e exige reforço de frota e equipes  
   - Monitorar entregas acima de 30 dias e criar alertas internos para casos críticos  


---

## 🚀 Como Executar o Projeto
Clone o repositório:

```bash
git clone https://github.com/JohanoVenka/olist_data_analysis.git

```

Instale as dependências:

```bash
pip install -r requirements.txt
```

Abra o notebook:

```bash
jupyter notebook
```

---

## Estrutura do Projeto

```text
olist-payments-analysis/
│
├── data/
│   ├── olist_order_payments_dataset.csv
│   ├── olist_orders_dataset.csv
│   └── olist_analysis_ecommerce.sql
│
├── notebooks/
│   └── olist_payments_analysis.ipynb
│
├── crosstab_analysis_1.sql
├── crosstab_analysis_2.sql
├── olist_data_analysis.ipynb
├── README.md
└── requirements.txt


```

---

## Próximos Passos

* Criar visualizações mais avançadas.
* Integrar a análise com as tabelas de produtos, itens e clientes.
* Construir dashboard em Power BI.
* Expandir o projeto para outras tabelas da Olist.
* Criar um pipeline ETL automatizado.

---

## Autor

João José R. O. Silva

