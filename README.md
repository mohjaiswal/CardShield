# CardShield: Enhanced Credit Card Fraud Prevention

![CrediSafe](https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/200099156990375.6371380687770.png)

## Description

CrediSafe is an innovative project aimed at detecting credit card fraud through comprehensive data analysis. The project encompasses three core tasks:

1. **Data Modeling:** Development of a PostgreSQL database, structured based on an entity-relationship diagram (ERD).
2. **Data Engineering:** Importation of data from CSV files into the database.
3. **Data Analysis:** Execution of SQL queries and PyViz visualizations to identify potential fraudulent transactions and to generate detailed trend data for specific cardholders.

## Badges

[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen)](https://github.com/mohjaiswal/CrediSafe)

## Visuals

![ERD Diagram](images/ERD_MJ.png)

The ERD diagram illustrates the interconnections among various tables including `card_holder`, `credit_card`, `merchant`, `merchant_category`, and `transaction`.

## Installation

1. Clone the CrediSafe repository.
2. Establish a PostgreSQL database named 'CrediSafe'.
3. Utilize the supplied SQL file to create the database schema.
4. Import data from CSV files into the database.
5. Install necessary Python libraries using: `pip install pandas sqlalchemy hvplot`.
6. Launch the Jupyter Notebook for conducting data analysis.

## Objectives

1. Segregate and analyze transactions for individual cardholders.
2. Identify and flag potential fraudulent transactions.
3. Examine consumption patterns to spot anomalies.
4. Employ visualizations for improved fraud detection.

## Usage

For conducting data analysis and generating visualizations, refer to the Jupyter Notebook `visual_data_analysis_MJ.ipynb`.

## Visual Data Analysis of Fraudulent Transactions

### Analysis Question 1

- Visualization of transaction time series for cardholder IDs 2 and 18.
- Assessment of consumption patterns to identify potential fraud.

![Card Holder 2 Transactions](images/Card_Holder_2.png)

### Analysis Question 2

- Examination of spending data for cardholder ID 25 in the first quarter of 2018.
- Identification of outliers and analytical insights.

![Card Holder 18 Transactions](images/Card_Holder_18.png)

## Support

- For issues, create a ticket in this repository.
- Connect on [LinkedIn](https://www.linkedin.com/in/mohjaiswal).
- Email: mohjaiswal@gmail.com.

## Roadmap

1. Refine fraud detection algorithms.
2. Advance the visual analytical tools.
3. Integrate machine learning techniques for fraud detection.

## Contributing

1. Fork the CrediSafe repository.
2. Start a new branch.
3. Implement changes and submit a pull request.

## Authors and Acknowledgment

- **Moh Jaiswal** - Project Lead

Special thanks to instructors Sasanka Panda and Mehdi Lebi, and peers for their invaluable contributions.

## License

CrediSafe is made available under the MIT License.

## Project Status

Currently in active development. Contributions are highly encouraged.

## Legal Disclaimer

### This analysis is strictly for educational and research purposes and should not be viewed as professional financial or investment advice. Exercise caution and conduct thorough research prior to making any investment decisions. The repository owner disclaims responsibility for any actions taken based on this information. The findings and conclusions herein should be considered educational, not professional advice.
