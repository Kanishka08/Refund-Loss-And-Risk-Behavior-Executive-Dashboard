# 🛡️ Refund Loss & Risk Behavior Intelligence – Executive Dashboard

## 📌 Objective
Designed to help financial institutions detect refund-related losses and identify risky user behaviors based on transaction patterns, card types, and credit profiles.

---

## 📂 Dataset

Dataset used:  
📥 [Financial Transactions Dataset – Kaggle](https://www.kaggle.com/datasets/computingvictor/transactions-fraud-datasets)

---

## 🔧 Data Pipeline

- **Python:** Initial data cleaning (null handling, formatting, feature correction)
- **SQL (MySQL):** Joins and transformation of multiple tables into a unified `master_transaction` dataset
- **Power BI:** Final modeling, calculated columns, DAX measures, and dashboard visualization

---

## 📊 Dashboard Overview

### ✅ Key KPIs
- **Total Transactions:** 1M
- **Total Revenue:** ₹51.53M
- **Total Refunds (Abs):** ₹5.63M
- **Refund %:** 12.26%
- **Total Users:** 1,131
- **High Risk Users:** 160

---

### 📈 Key Insights
- **Debit (Prepaid)** cards showed the highest refund rate at **13.51%**
- **Swipe transactions** had nearly **3x** refund percentage compared to online
- Refunds are more concentrated in the **25K–50K income band**
- High refunds observed from users with **credit score <700**

---

## 🎯 Filters for Custom Insights
Users can slice the dashboard using:
- Date Range
- Card Type (Credit, Debit, Prepaid)
- Online vs Swipe Transactions
- Merchant State
- Gender

📎 *Tooltip added: “Use filters above to slice data”*

---

## 🛠️ Tools Used
- **Python:** Data Cleaning (Pandas, NumPy)
- **MySQL:** Data Transformation and Joins
- **Power BI:** Dashboard Visualization, DAX, Slicers

---

## 📷 Dashboard Preview

### 🔹 Default View

![Dashboard Screenshot](dashboard.png)

---

## 🧠 Business Use Case
> This dashboard supports fraud analysts and revenue protection teams in identifying abnormal refund behaviors and customer segments that contribute disproportionately to financial risk. Designed with storytelling and filter-driven exploration in mind.

---

## 🙋‍♂️ About Me

**Kanishka Narayan Choudhury**  
Aspiring Data Analyst | Excel | SQL | Power BI | Python  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/kanishka-n-choudhury/)

---
