# 🛒 AWS Glue E-Commerce Data Lake

A serverless end-to-end **E-Commerce Data Lake** built on AWS using **Amazon S3**, **AWS Glue Crawlers**, **AWS Glue ETL (PySpark)**, and **Amazon Athena**. This project demonstrates how to ingest raw CSV data, catalog it, clean and transform it into Parquet format, and perform SQL-based analytics.

---

## 📌 Project Overview

This project implements a modern data lake architecture for an e-commerce dataset.

The workflow includes:

* Uploading raw CSV datasets to Amazon S3
* Cataloging data using AWS Glue Crawlers
* Cleaning and transforming data with AWS Glue ETL (PySpark)
* Converting CSV files into optimized Parquet format
* Creating an analytics-ready data catalog
* Querying the processed data using Amazon Athena

---

## 🏗️ Architecture

```text
               Raw CSV Files
                     │
                     ▼
          Amazon S3 (Raw Zone)
                     │
                     ▼
         AWS Glue Crawler
                     │
                     ▼
      Glue Data Catalog (Raw DB)
                     │
                     ▼
      AWS Glue ETL Job (PySpark)
                     │
                     ▼
      Amazon S3 (Processed Zone)
        (Parquet Format)
                     │
                     ▼
      AWS Glue Crawler
                     │
                     ▼
   Glue Data Catalog (Analytics DB)
                     │
                     ▼
          Amazon Athena
                     │
                     ▼
            SQL Analytics
```

---

# ☁️ AWS Services Used

* Amazon S3
* AWS Glue Crawlers
* AWS Glue Data Catalog
* AWS Glue ETL
* PySpark
* Amazon Athena
* AWS IAM

---

# 📂 Project Structure

```text
AWS-Glue-ECommerce-Data-Lake/
│
├── README.md
├── glue_etl_job.py
├── athena_query.sql
├── Project_Documentation.pdf
├── datasets/
│   ├── customers.csv
│   ├── products.csv
│   └── orders.csv
└── screenshots/
    ├── s3-buckets.png
    ├── glue-crawler.png
    ├── glue-job-success.png
    ├── processed-bucket.png
    └── athena-output.png
```

---

# 🔄 Workflow

### Step 1 — Raw Data Storage

* Create Amazon S3 Raw Zone
* Upload:

  * customers.csv
  * products.csv
  * orders.csv

### Step 2 — Catalog Raw Data

* Create CSV Classifier
* Run AWS Glue Crawler
* Generate Glue Data Catalog tables

### Step 3 — ETL Transformation

Using AWS Glue ETL (PySpark):

* Handle missing email values
* Replace missing product categories
* Convert negative prices to positive values
* Validate order quantity
* Convert CSV to Parquet

### Step 4 — Catalog Processed Data

Run a second AWS Glue Crawler on the processed S3 bucket to create Parquet tables.

### Step 5 — Query with Amazon Athena

Perform SQL joins across Customers, Orders, and Products to generate business insights.

---

# ✨ Features

* Serverless architecture
* Fully managed AWS services
* Data cleaning using PySpark
* Glue Data Catalog integration
* Optimized Parquet storage
* SQL analytics with Athena
* Scalable data lake design

---

# 📊 Sample Athena Query

```sql
SELECT
    o.order_id,
    c.name,
    p.product_name,
    o.quantity,
    p.price,
    (o.quantity * p.price) AS total_sales
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN products p
    ON o.product_id = p.product_id
ORDER BY total_sales DESC;
```

---

# 📸 Screenshots

Include screenshots of:

* Amazon S3 Buckets
* Glue Crawlers
* Glue Data Catalog
* Glue ETL Job (Succeeded)
* Processed Parquet Files
* Athena Query Output

---

# 🚀 Learning Outcomes

After completing this project, you will understand:

* Data Lake Architecture
* Amazon S3 Storage Design
* AWS Glue Crawlers
* Glue Data Catalog
* PySpark ETL Development
* Parquet File Format
* Amazon Athena Analytics

---

# 👨‍💻 Author

**Ankit Mehra**

B.Tech (Computer Science & AI)

AWS | Data Engineering | Python | PySpark | SQL | Cloud Computing

---

# ⭐ If you found this project useful

Please consider giving this repository a **Star ⭐**.
