# Crime Reports in Austin
## Isaac Ke, Geo Lee, Cameron Thomas, Kyle Dennis, Samuel Currans 

### Description: Time series analysis on police crime reports in Austin.  

## Goal of Project
Our focus for this project is to explore any trends or cycles in Austin’s crime rate and identify any crime
specific patterns (e.g. the relationship between time of year and crime count). Using that information we will
utilize various time series analysis techniques to smooth the data to uncover trend and seasonality, transform
to stationarity, generate ACF and PACF plots, formulate appropriate ARMA/SARIMA models, iteratively fit
and tune the models, and then forecast future crime rates in Austin.

## Data Introduction
The data was obtained from the [Austin Police Department (APD)](https://data.austintexas.gov/Public-Safety/Crime-Reports/fdj4-gpfu). It includes all instances since January 1,
2003 where APD responded to a criminal incident and wrote a police report. Each entry includes the date
of the incident, the highest offense, whether it involved family violence, clearance status, clearance date, and
various spatial data such as GPS coordinates and council district. The dataset has been updated every Monday
since January 1, 2003 and at the time of writing was last updated June 6, 2022. For our particular aims of our
project, we specifically look at the count of the monthly police reports from January 2003 to March 2022 (231
observations).  

Dataset (crime.RData): [Google Drive](https://drive.google.com/file/d/1w2W3jyYdG7crC4fsx9W78Wb7SkXqRjjC/view?usp=sharing)

Final Presentation Slide Deck: [here](https://docs.google.com/presentation/d/193Je0lj2YXZ-jlU9PsKeZLogCFzr1E4-PtFTFds4Os4/edit?usp=sharing)

Final Report: [Google Drive](https://drive.google.com/file/d/1PRfy2dit0GAtUfYdIPPhjarPmeWc7UfD/view?usp=sharing) or [Final Report folder](https://github.com/isaacke9/austin-crime-reports/tree/main/Final%20Report)
