# Team4-FinalProject
Bootcamp Team4 Final project

### Chosen Topic
* Using various tools, we are looking to predict Air Quality in regions across North Carolina on a day to day basis to help populations with respiratory illnesses determine if it is safe for them to be outside. 
* Build a model that can, based on previous patterns and data, determine if the air quality is safe, for populations experiencing a respiratory illness  

### Why North Carolina AQI?
* Our goal is to help people with respiratory illnesses determine if it is safe for them to go outside from the safety of their home and with the ability at their fingertips 
* Help people/families with respiratory illnesses looking to move to North Carolina determine what region might suit them and their medical needs best

### Dataset 
* The dataset, “US Air Quality 1980-Present: Daily AQI Values from stations across the US,”  was found on Kaggle and can be accessed [here](https://www.kaggle.com/datasets/calebreigada/us-air-quality-1980present)
* The dataset contains the Air quality data from various stations across the United States. For this project we have selected to use only data from North Carolina testing stations

### Questions we are aiming to answer
* Do certain times of the year have better air quality than others?
* What AQI is safe/unsafe for a person with a respiratory illness?
* Does population density have an effect on AQI?
* Does location have an effect on AQI?
* What region of North Carolina would best suit someone with a respiratory illness?

### Technologies Used
* Analyzing/Cleaning data
  * Jupyter notebook
  * Pandas 
  * Python
  * Google Colab
  * PySpark 
* Database 
  * Housed in Amazon Web Services (AWS)
  * Postgres/SQL
* Machine Learning Model
  * Scikit-learn
  * Imbalanced-learn 
* Dashboard 
  * Tableau 

### Database Storage 
* An ERD to show the relationships between the data will be made and tables will be created in SQL 
* The ERD of the data can be seen [here](https://github.com/Hanitapatel/Team4-FinalProject/blob/tgeis_database/Database_ERD%20Revised.png)
* The database will be stored in Amazon Web Services (AWS) and the csv file containing the data can be found in an S3 bucket 

### Machine Learning
* Location, population, time of year to get AQI category
* Linear regression or neural network 
  * Linear- on year by year basis 
* Will be testing multiple machine learning models to compare classification reports 

### Dashboard 
* A dashboard to display the findings of the analysis  will be created using Tableau 

## Communication Protocols
    - Slack channel
    - Zoom meeting during and outside of the class time
    - Git Hub
    
## GitHub
   We have a main branch and one branch per team member. Main branch includes README.
