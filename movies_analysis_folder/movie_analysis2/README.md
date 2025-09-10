# Netflix Movie Ratings Analysis

## Overview
This project analyzes Netflix movie and user rating data to uncover trends and patterns. The analysis identifies top-rated movies, the most generous and active users, and rating trends by release decade. Key metrics such as average ratings, number of ratings, and rating variability are calculated and visualized.

## Features
- Merge movie and rating datasets for clean analysis  
- Calculate average ratings per movie and identify top-rated movies  
- Identify most generous and active users based on their ratings and number of reviews  
- Analyze rating trends by release decade for movies with sufficient data  
- Visualize key metrics using bar charts and histograms  

## Key Steps
1. Merge datasets on `Movie_ID` with an inner join to keep only movies with ratings  
2. Group by `Movie_ID` to calculate average ratings and sort to find top movies  
3. Identify most generous users based on average ratings and total number of ratings  
4. Filter movie release years (1900–2025) and create a `Decades` column for trend analysis  
5. Filter decades with at least 200 ratings and visualize average movie ratings per decade  
6. Analyze rating variability among top users by calculating standard deviation of their ratings  
7. Visualize distribution of rating variability with histograms  

## Requirements
- Python 3.x  
- pandas  
- matplotlib  
- seaborn  

Dependencies are listed in `requirements.txt`.

