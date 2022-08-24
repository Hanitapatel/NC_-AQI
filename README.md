# North Carolina Air Quality Index (AQI)
Bootcamp Team4 Final project
=======
By Spencer Pope, Hanita Patel, Tammy Geis, and Angela Arce


### Chosen Topic
* Using various tools, we are looking to predict Air Quality in regions across North Carolina on a day to day basis to help populations with respiratory illnesses determine if it is safe for them to be outside. 
* Build a model that can, based on previous patterns and data, determine if the air quality is safe for populations experiencing a respiratory illness  

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
* The ERD of the data can be seen [here](https://github.com/Hanitapatel/Team4-FinalProject/blob/main/ERD/Database_ERD_Final.png)
* The database will be stored in Amazon Web Services (AWS) and the CSV file containing the data can be found in an S3 bucket
* An SQL schema will be used in pgadmin to join the popualtion_table and site_reporting_table together
* The [Data Updater](https://github.com/Hanitapatel/Team4-FinalProject/blob/2baa263ff03a057e32cbc60742f153c530c23634/database%20update/data_updater.ipynb) can be used to update the dataframes from PGAdmin or a CSV with data from the EPA.


### Machine Learning

* To begin the machine learning model process we connected to the database from python using psycopg2 and pulled the data to use in the model from the tables in PgAdmin. The columns that we chose are ones we felt would have the greatest impact on predicting AQI values 
   * Columns in the dataframe to use in the machine learning model include: year, month, AQI, latitude, longitude, population, and density 
* For the model we chose to use a Deep Neural Network with two layers 
   * We have chosen this model because it is able to recognize patterns in our data and provide an AQI category based on the previously input data
* The X and y data were set by using the columns from the Machine Learning dataframe 
   * The y values being predicted are the category the AQI values fall into 
   * The X values are all of the columns in the dataframe except for the AQI category column
* We then split the data into the training and testing sets using the train_test_split method and a MinMaxScaler was used to scale the input data 
* After running the original model, predicting AQI value, with modifications to the number of layers and the number of nodes in each layer, the loss still would not decrease and the accuracy was not increasing. To combat this we decided to try to run the model to predict the category that the AQI would fall into as opposed to predicting the AQI directly
* To do this, we categorized AQI by [EPA standards](https://www.airnow.gov/sites/default/files/2020-05/aqi-technical-assistance-document-sept2018.pdf):
   * 1 = Good, AQI: 0-50
   * 2 = Moderate, AQI: 51-100
   * 3 = Unhealthy for Sensitive Groups, AQI:101-150
   * 4 = Unhealthy, AQI:151-200
   * 5 = Very Unhealthy, AQI:201-300
   * 6 = Hazardous, AQI:301+
* When the machine learning model was predicting the AQI category instead of the AQI value, the loss of the model decreased to 0.0180 and the accuracy increased to 64%
* If we had more time to complete this project, we would like to look at the statistical breakdown of the effect that various air pollutants have on AQI per region in North Carolina. 

### Dashboard 
* A dashboard to display the findings of the analysis will be created using Tableau.
* [Tableau Public Visualization](https://public.tableau.com/app/profile/hanita6433/viz/Team4NCAQIPrediction/Team4NCAQIPrediction#1)

### Presentation
Google Slide Presentation can be viewed [here](https://docs.google.com/presentation/d/1nM4eEBQu5QLMny_0g068TraFPewo3p2E-1CmxfTic5c/edit#slide=id.p)
    
## GitHub
   We have a main branch and one branch per team member. Main branch includes README.  
