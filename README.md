# CrediSafe - Credit Card Fraud Detection

![CrediSafe](https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/200099156990375.6371380687770.png)

## Description

CrediSafe is a credit card fraud detection project that uses data analysis to identify potential fraudulent transactions. The project consists of three main tasks:

1. **Data Modeling:** We create a PostgreSQL database, designing it using an entity-relationship diagram (ERD).

2. **Data Engineering:** Data from CSV files is imported into the database.

3. **Data Analysis:** Using SQL queries and PyViz visualizations, we address the CFO's request for identifying potential fraudulent transactions and generating detailed trend data on specific cardholders.

## Badges

[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen)](https://github.com/mohjaiswal/CrediSafe)

## Visuals

![ERD Diagram](images/ERD_MJ.png)

The ERD represents the relationships between different tables, including `card_holder`, `credit_card`, `merchant`, `merchant_category`, and `transaction`.

## Installation

1. Clone the repository.
2. Set up a PostgreSQL database named CrediSafe.
3. Create the database schema using the provided SQL file.
4. Import data from the CSV files.
5. Install required Python libraries: `pip install pandas sqlalchemy hvplot`.
6. Run the Jupyter Notebook for data analysis.

## Objectives

1. Isolate and group transactions for each cardholder.
2. Detect evidence of credit card hacking or fraudulent transactions.
3. Analyze consumption patterns and identify anomalies.
4. Utilize visualizations to enhance fraud detection insights.

## Usage

Use the Jupyter Notebook `visual_data_analysis_MJ.ipynb` for data analysis and visualizations.

## Visual Data Analysis of Fraudulent Transactions

### Data Analysis Question 1

- Visualize time series of transactions for cardholder IDs 2 and 18.
- Compare consumption patterns to detect potential fraud.

![Card Holder 2 Transactions](images/Card_Holder_2.png)

### Data Analysis Question 2

- Analyze expenditure data for cardholder ID 25 in the first quarter of 2018.
- Detect outliers and provide insights.

![Card Holder 18 Transactions](images/Card_Holder_18.png)

## Support

- Create an issue in this repository.
- Chat on [LinkedIn](https://www.linkedin.com/in/mohjaiswal).
- Contact at mohjaiswal@gmail.com.

## Roadmap

1. Improve fraud detection algorithms.
2. Enhance visualizations.
3. Explore machine learning-based fraud detection.

## Contributing

1. Fork the repository.
2. Create a new branch.
3. Make changes and open a pull request.

## Authors and Acknowledgment

- **Moh Jaiswal** (Project Lead)

Acknowledgments to instructors and fellow students for valuable insights.

## License

This project is licensed under the MIT License.

## Project Status

Active development. Contributions welcome.
