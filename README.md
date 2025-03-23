 # 🚀Tri-City Volunteer Volunteer Data Automation - 03/2025
-----------------------------------------------------------------------------------
 - **🛠️Prepared by: Zach Wei** 
- : zw0914work@outlook.com 
- Phone: 5202446087

## 📌 Introduction
This project is designed to fetch and analyze volunteer data from **Galaxy Digital**’s Volunteer Management System API. It automates data retrieval to generate visualized insights, trend analysis, and reports, streamlining volunteer management and decision-making.

<a href="url"><img src="https://github.com/user-attachments/assets/80219984-9a02-4c5b-9425-33bca9f02746" align="left" height="620" width="1000" ></a>


<p>&nbsp;</p>

## 🎯 Features
- 📡 Fetches volunteer information and shift data from Galaxy Digital API(*Rest API using bearer token*)
- 🔗 Integrates with **Google Sheets** as a data connector via **Google Apps Script**.
- 📦 Import real-time and historical data to **Google Looker Studio**
- 🚀 Explore, analyze, and visualize volunteer data with interactive dashboards!

<p>&nbsp;</p>

## 🛠️ Tech Stack
**Programming Language**: Python 3.x(for testing) - Optional 
                          Java
**Libraries/Tools**:
- **📨Postman**: Send an API request
- **🔄Google App Script**: Automate data retrieval by pulling data from the Galaxy Digital API into Google Sheets.
- **🐍 Python** – Used for learning about the dataset and testing with the API:
  - requests – To interact with the Galaxy Digital API
  - pandas – For data processing and storage
  - json – Handling API responses

<p>&nbsp;</p>

## ✅ Prerequisites
- 1️⃣ Work with the Volunteer Manager
  - Obtain Galaxy Digital account credentials (username & password).
  - Create an API key in the Galaxy Digital system to enable API access.
  - Learn about terms

- 2️⃣ Google Account Setup
 - A Google account is required for:
   - Google Sheets 
   - Google Apps Script 
   - Google Looker Studio

 <p>&nbsp;</p>

## 🔑 API Access 🌐

### 1️⃣ Work with the Volunteer Manager 🔧
- **Create an API Key in Galaxy Digital System** 🗝️
  - [Watch This Guide 🎥](https://www.galaxydigital.com/software-release-notes/october-2023)
  - Log into your Galaxy Digital account 🌟.
  - Navigate to Settings → API Management → Create an API Key and keep it secure 🔒.

### 2️⃣ Send an API Request 📧
- **Obtain the Bearer Token for Future API Use** 🐻
  - Open Postman 📬.
  - Set the method to POST 📤.
  - Enter the endpoint URL: `https://api.galaxydigital.com/api/users/login`
  - In the Body section (set to Raw), enter the following JSON:
    ```json
    {
      "key": "Your API key",
      "user_email": "your@email.com",
      "user_password": "yourPassword"
    }
    ```
  - Click SEND to receive your bearer token 📩.

- **Use the Bearer Token to Retrieve Data** 📊
  - Consult the [Galaxy Digital API Documentation 📚](https://api.galaxydigital.com/docs/#/) to identify the desired data.
  - In Postman, set the method to GET 🔍.
  - Enter the relevant endpoint URL from the API documentation.
  - Set AUTH to Bearer Token and paste your bearer token 🎫.
  - Click SEND to view the JSON file containing the data 📁.
    
<p>&nbsp;</p>

## 🔗 Set up the App Script as a Connector 🛠️
### a. Set Up Your Google Sheet to Store Data 📋
1. Log into your Google Sheets 📑.
2. Create a new blank sheet 🆕.
3. Go to Extensions → Apps Script to open a new Apps Script project 🖥️.

### b. Configure the Apps Script ⚙️
1. Paste the provided **Sample Apps Script Java** into the script editor 📝.
2. Replace the endpoint URL and Bearer Token with your own 🔄.
3. Customize the columns to match the data schema from Galaxy Digital and your Google Sheet 📊.
4. Set up and configure a trigger to automate data pulling 🔄.
5. Save and run the script to populate your Google Sheet with data 📈.

## Connect to Google Looker Studio and Create a Dashboard 📊
1. Log into or sign up for Google Looker Studio 🌐.
2. Start a new project and name it appropriately 🏷️.
3. Click "Add Data" and select the Google Sheet storing your data 📌.
4. Begin creating visualizations and exploring the data 🎨.
