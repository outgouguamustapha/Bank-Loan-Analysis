# Bank-Loan-Analysis
Bank Loan Analysis Dashboard
This repository contains a Power BI project that analyzes loan data, providing insights into loan applications, funded amounts, interest rates, and various financial metrics. The visualizations are aimed at understanding the distribution of good and bad loans, with detailed information on loan terms, purposes, home ownership, and loan status.

## Table of Contents
- [Overview](#overview)
- [Data Source](#data-Structure)
- [Project Structure](#project-Structure)
- [Features](#features)
- [Visualization](#visualization)
- [How to Use](#how-to-Use)
- [Contributing](#contributing)
- [License](#license)

## Overview
This Power BI report focuses on analyzing the loan performance of a financial institution, showing key metrics such as loan applications, funded amounts, received amounts, interest rates, and DTI (Debt-to-Income) ratios.
The report is divided into three main sections:
- Summary: Displays overall statistics on loan applications and the division between good and bad loans.
- Overview: Provides visualizations of loan applications by month, purpose, address state, and more.
- Details: Shows detailed information about each loan application, including the purpose, grade, and loan amount.

## Data Structure
The data includes:
- Loan ID : Loan ID is a unique identifier assigned to each loan application or loan account.
- Address State : Address State indicates the borrower's location.
- Employee Length : Employee Length provides insights into the borrower's employment stability.
- Employee Title : Employee Title specifies the borrower's occupation or job title.
- Grade : Grade represents a risk classification assigned to the loan based on creditworthiness. 
- Sub Grade : Sub Grade refines the risk assessment within a grade, providing additional risk differentiation.
- Home Ownership : Home Ownership indicates the borrower's housing status.
- Issue Date : Issue Date marks the loan's origination date.
- Last Credit Pull Date : Last Credit Pull Date records when the borrower's credit report was last accessed.
- Last Payment Date : Last Payment Date marks the most recent loan payment received.
- Loan Status : Loan Status indicates the current state of the loan (e.g., fully paid, current, default).
- Next Payment Date : Next Payment Date estimates the date of the next loan payment.
- Purpose : Purpose specifies the reason for the loan (e.g., debt consolidation, education).
- Term : Term defines the duration of the loan in months. It sets the repayment period.
- Verification Status : Verification Status indicates whether the borrower's financial information has been verified.
- Annual Income : Annual Income reflects the borrower's total yearly earnings.
- DTI (Debt-to-Income Ratio) : DTI measures the borrower's debt burden relative to income.
- Instalment : Instalment is the fixed monthly payment amount for loan repayment, including principal and interest.
- Interest Rate : Interest Rate represents the annual cost of borrowing expressed as a percentage.
- Loan Amount : Loan Amount is the total borrowed sum. It defines the principal amount.




## Project Structure
```bash
├── README.md
├── scripts
│   └── data_preparation.py       # Sql script for data cleaning, filtering, and aggregation.
├── data
│   └── *.csv                  # data file
├── images
    └── dashboard_screenshot.png # Example screenshots of the Power BI dashboard
```

## Tools Used
- Excel
- SQL : The SQL scripts used in this project are essential for data transformation and loading. They handle data cleaning, filtering, and aggregation before visualizing it in Power BI. You can find the SQL scripts in the sql scripts/ directory.
- Power BI


## Features
### Loan Analysis: 
Breakdown of loan applications into good and bad categories.

### Financial Metrics: 
Key statistics such as average interest rate, DTI ratio, funded amount, and received amount.

### Dynamic Filtering: 
Users can filter by loan status, grade, or purpose for customized views.

### Interactive Visuals: 
Explore trends over time, such as loan applications by state, purpose, and home ownership

## Visualization
The Power BI report contains multiple pages, including:
- Summary Page : 
-- Displays high-level metrics: loan applications, funded amounts, received amounts, interest rates, and debt-to-income (DTI) ratios.
-- Provides a visual breakdown of good vs. bad loans.
- Overview Page :
-- Shows trends in loan applications over time.
-- Visualizes loan applications by state, purpose, and term.
- Details Page
-- Presents a detailed table view of individual loans.
-- Includes filters for loan type, grade, and purpose for deeper analysis
Screenshots of the visuals can be found in the /images folder.

## How to Use
- Access the Power BI report (Tech Giants: Stock Data Analysis (2014-2023)) in Power BI Service.
  -- [Report LINK](https://tinyurl.com/24ua8yad)
  > Right-click the link and select "Open in new tab" or "Open in new window" for better navigation.
  




## Contributing
Feel free to contribute to this project by submitting a pull request. For major changes, please open an issue to discuss what you would like to change.

## License
This project is licensed under the MIT License.
