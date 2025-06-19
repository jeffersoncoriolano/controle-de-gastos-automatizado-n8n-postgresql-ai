# 📲 Controle de Gastos Pessoais com N8N, Telegram, PostgreSQL e Gemini AI

Este projeto é uma automação de controle de gastos pessoais que conecta **Telegram**, **N8N**, **PostgreSQL (Supabase)** e **Google Gemini** para criar um sistema inteligente de registro e consulta de transações financeiras.

> **Objetivo:**  
Registrar automaticamente gastos via Telegram, utilizando IA para interpretar mensagens em linguagem natural e permitir consultas como:  
👉 *"Quanto gastei esta semana?"*  
👉 *"Gastos com Farmácia no mês passado"*  

---

## 🧰 Tecnologias utilizadas

- **N8N Cloud** – Automação de workflows
- **Supabase (PostgreSQL)** – Banco de dados relacional
- **Telegram Bot API** – Para interação via chat
- **Google Gemini API (Versão gratuita gemini-2.0-flash)** – Interpretação de linguagem natural
- **Python e JavaScript no N8N Code Node** – Para tratamento de dados e lógica de parcelas

---

## 📡 Arquitetura do Fluxo

![image](https://github.com/user-attachments/assets/ec9f60ba-6b86-4d63-b50b-a79a31fd1d94)

### Principais fluxos:

1. **Registro de gasto (Input via Telegram):**
   - Usuário envia uma mensagem como:  
     `"BRADESCO CARTÕES: COMPRA APROVADA NO CARTAO FINAL 5652 EM 14/06/2025 13:20. VALOR DE R$ 69,90 BIG FARMA MACAÉ."`
   - O N8N usa o OpenAI para extrair a data, valor, descrição, parcelas e categoria.
   - O sistema verifica se a transação já existe no banco (para evitar duplicatas).
   - Se for nova, grava na tabela `transacao` com estrutura de parcelas, se houver.
   - Se já existir, retorna mensagem ao usuário dizendo que a transação já está cadastrada.

2. **Consulta por linguagem natural (Exemplo):**
   - Usuário pergunta via Telegram:  
     *"Quanto gastei com Farmácia este mês?"*
   - O N8N usa o OpenAI para gerar a SQL.
   - Executa a consulta no PostgreSQL.
   - Retorna o total diretamente no chat.

---

## 🗃️ Estrutura de Banco de Dados (PostgreSQL)

### Tabela: `transacao`

| Campo | Tipo |
|---|---|
| id | serial (PK) |
| data | date |
| valor | numeric |
| descricao | text |
| parcela_atual | integer |
| parcela_total | integer |
| id_categoria | integer (FK → categoria.id) |

### Tabela: `categoria`

| Campo | Tipo |
|---|---|
| id | serial (PK) |
| nome | text |
| id_categoria_pai | integer (FK → categoria.id) |

---

## 📷 Screenshots

📌 Exemplos de execução (ver na pasta `/screenshots`):

- Fluxo completo no N8N
- Exemplo de consulta via Telegram
- Exemplo de INSERT de transação parcelada
- Query SQL gerada pela IA

---

## 🚀 Possíveis melhorias futuras

- Deploy self-hosted do N8N para ter mais controle sobre custos
- Criação de um dashboard visual (ex: Metabase, Streamlit ou Grafana)
- Implementar fluxo com OCR para ler o texto de prints das notificações de compras no cartão, de SMS ou de notas fiscais
- Melhorar a classificação de categorias com IA de classificação embutida

---

## 🤓 Motivação pessoal

Este projeto surgiu de uma necessidade real de controlar meus próprios gastos de cartão de crédito de forma prática, usando ferramentas de automação e IA. Além de resolver um problema do dia a dia, se tornou uma oportunidade de aplicar conceitos de **engenharia de dados**, **automação de processos** e **integração com IA**.

---

## 📌 Como rodar este projeto

> Este projeto foi desenvolvido e testado no ambiente **N8N Cloud**, utilizando **Supabase** como banco.  
> Para testar localmente, é necessário:

- Criar um banco PostgreSQL
- Configurar um bot no Telegram
- Ter acesso a uma conta Google Gemini AI ou OpenAI com API Key
- Subir os workflows contidos na pasta `/n8n-workflows`

---

## 📬 Contato

Se quiser saber mais ou tiver interesse em colaborar, sinta-se à vontade para me chamar no [LinkedIn](https://www.linkedin.com/in/jeffersoncoriolano/) ou abrir uma issue aqui no repositório.

