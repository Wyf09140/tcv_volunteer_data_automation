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

## 🔑 API Access

- 1️⃣ Work with the Volunteer Manager
     - Create a API Key in Gaxaly Digital System - Watch This:[GitHub](https://www.galaxydigital.com/software-release-notes/october-2023)
     -	Log into Galaxy Digital account
     -	Go setting – API Management – Create a API Key and keep it

- 2️⃣	Send a API request (Watch the vide from 0:00 – 5:00)
     -	Get the bearer token for the future API use
          - Log in your Postman 
          - Set a Post
          - Paste the endpoint url to "https://api.galaxydigital.com/api/users/login"
          - Paste the login account/password/API in the Boby - Raw in the format like this:
                -   {
                        "key": "API key",
                        "user_email": "Galaxy Digital Email",
                        "user_password":"Password"
                    }
           -	Click SEND, you will get the bearer token
     -	Use the bearer token to get the target data
           -  Read the Galaxy Digital API document to see the data you want to GET(https://api.galaxydigital.com/docs/#/)
           -	Set A GET in Postman
           -	Paste the endpoint URL according to the API document
           - Set the AUTH to Bearer Token and paste the bearer token 
           - Click SEND, you will see the json file

## 🔗	Set up the App Script as a connector 
a.	Set up your google sheet where the data store 
1.	Log in to your google sheet 
2.	Create a blank google sheet 
3.	Click the Extension manage, choose the App Scirpt
4.	You will see a  App Script project open 
b.	Set up the App Scirpt with a triggler 
i.	1. Paste the XXXX into it
ii.	Replace the  endpoint url and Bearer Token
iii.	Customize the columns you want to pull from the Galaxy Digital and your columns name
1.	Find the target data’s schema and copy and paste it with the Java code sample I provide to ChatGPT to help you generate the updated code
iv.	Set up your trigger   
v.	Save and run it
vi.	Go back to the Google sheet associated with this App Scirppt, you will see the target data store
4.	Connect the sheet with Google Looker studio and create the dashboard.
i.	Log in/up your Google Looker stuio
ii.	Create a project and give a proper name
iii.	Click add data and choose the Google sheet that stores your target data
iv.	Let’s play with data!!!

                   



 


