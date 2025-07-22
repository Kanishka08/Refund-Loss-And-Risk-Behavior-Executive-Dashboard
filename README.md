# 🛡️ Fraud & Refund Risk Intelligence – Dashboard

## 📌 Objective

This executive dashboard is designed to support fraud analysts and risk management teams in identifying **refund abuse patterns**, analyzing **customer risk behavior**, and minimizing **revenue leakage**. It combines data from multiple sources to uncover high-risk segments across transaction modes, income groups, and geographic regions.

---

## 📂 Dataset

- **Source:** [Financial Transactions Dataset – Kaggle](https://www.kaggle.com/datasets/computingvictor/transactions-fraud-datasets)
- **Period Covered:** Jan 2010 – Oct 2010
- **Volume:** 1 million+ transaction records, user profiles, and card details

---

## 🔧 Data Pipeline

- 🐍 **Python (Pandas, NumPy):** Data cleaning, null handling, type formatting, and feature correction
- 🛢️ **MySQL:** SQL joins and transformation across multiple tables to build a unified `master_transaction` dataset
- 📊 **Power BI:** Data modeling, DAX measures, calculated columns, slicers, and final visualization

---

## 📊 Dashboard Overview

### ✅ Key KPIs
| Metric | Value |
|--------|-------|
| **Total Transactions** | 1M |
| **Total Revenue** | ₹51.53M |
| **Total Refunds (Absolute)** | ₹5.63M |
| **Refund % of Revenue** | 12.26% |
| **Total Users** | 1,131 |
| **High-Risk Users** | 160 |

---

## 📈 Executive Insights

- 💳 **Prepaid debit cards** had the highest refund rate at **13.51%**, suggesting potential misuse in non-credit channels with weaker verification layers.
- 🔄 **Swipe transactions** showed a **13.68% refund rate**, which is more than **3x higher** than online transactions (4.02%), indicating **greater exposure in physical merchant transactions**.
- 🧑‍💼 Users in the **₹25K–50K income** group and those earning **<₹25K** recorded the **highest refund percentages**, raising concern about refund abuse in lower-income customer segments.
- 📉 Customers with **credit scores below 700** consistently show **above-average refund behavior**, correlating financial risk with transaction-level refund patterns.
- 📈 **Refund volume steadily increased from Jan to May 2010**, indicating a persistent behavioral trend or potential policy exploitation.
- 🌍 Refund-linked transactions are concentrated in **North American merchant states**, highlighting a geographic hotspot for potential risk monitoring.

---

## 🎯 Filters for Dynamic Exploration

Users can slice and analyze the dashboard using multiple filters:
- **Date Range**
- **Card Type** (Credit / Debit / Prepaid)
- **Transaction Mode** (Swipe / Online)
- **Merchant State**
- **Gender**

📌 *Tooltip note added for user guidance: “Use filters above to slice data.”*

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| **Python (Pandas, NumPy)** | Data preprocessing and cleaning |
| **MySQL** | Data transformation, joins, and unification |
| **Power BI** | DAX measures, visualizations, slicers, KPIs |

---

## 📷 Dashboard Snapshot

> Default view of the dashboard showing refund trends, KPIs, risk segments, and geographic distribution.

![Fraud & Refund Risk Dashboard](dashboard.png)

---

## 📥 Download the Power BI File

You can download the `.pbix` file for this dashboard here:  
🔗 [Fraud & Refund Risk Intelligence Dashboard – Power BI File (Google Drive)](https://drive.google.com/file/d/1ty9EXEIUBFhbo-BmJOfH4UaSHHj-xsUZ/view?usp=sharing)

---

## 🧠 Business Use Case

This dashboard empowers financial institutions to:
- Detect early signs of **refund abuse** and **loss patterns**
- Identify **risky user segments** based on behavior, income, and credit score
- Pinpoint **geographic regions** with higher exposure
- Make data-driven decisions for **policy changes**, **fraud investigations**, and **risk control strategies**

---

## 🙋‍♂️ About Me

**Kanishka Narayan Choudhury**  
Aspiring Data Analyst | SQL | Excel | Power BI | Python  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/kanishka-n-choudhury/)

---

