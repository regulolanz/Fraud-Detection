# Fraud Detection 

This repository contains SQL scripts and Jupyter notebooks for a fraud detection system. It is a data analysis project that uses SQL to query data from a Postgres database and Python (Pandas) for data manipulation and analysis. The project also includes visualizations using hvPlot to identify fraudulent activities.

## Project Structure

The project is organized as follows:

- `all_tables_query.sql`: SQL script that includes all queries used in the project.
- `all_tables_schema.sql`: SQL script to create the database schema.
- `all_tables_seed.sql`: SQL script to seed the database with initial data.
- `challenge.ipynb`: Jupyter notebook containing the challenge part of the project, focusing on identifying anomalies using standard deviation and interquartile range.
- `visual_data_analysis.ipynb`: Jupyter notebook containing the visual data analysis of the transactions.
- `ERD_Diagram.png`: Entity Relationship Diagram (ERD) of the database schema.

## Setup and Usage

### Prerequisites

- Postgres database
- Python 3.x
- Jupyter notebook
- Python libraries: pandas, numpy, hvPlot, sqlalchemy

### Instructions

1. Clone the repository to your local machine.

2. Run the `all_tables_schema.sql` script in your Postgres database to create the schema.

3. Run the `all_tables_seed.sql` script in your Postgres database to seed the database with initial data.

4. Open the `challenge.ipynb` and `visual_data_analysis.ipynb` notebooks. Make sure to replace the database connection string with your Postgres database credentials:

    ```python
    engine = create_engine("postgresql://postgres:<your-password>@localhost:5432/fraud_detection")
    ```
   
5. Run all cells in the notebooks to perform the data analysis and visualize the results.

## Installation

You will need to install the necessary Python libraries. If not already installed, you can install them using pip:

```bash
pip install pandas numpy hvplot sqlalchemy psycopg2-binary
```

## Conclus

This project is a simple demonstration of using SQL and Python together for data analysis. It provides a basis for a fraud detection system, which can be further enhanced with machine learning algorithms for more accurate detection.