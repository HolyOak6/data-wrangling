# Spotify Songs Dataset Analysis

## Overview
This SQL script provides a variety of analyses on the `spotify_songs_dataset`. The goal is to explore trends in artist popularity, genre distribution, labels, albums, and other metadata to extract meaningful insights from the dataset. This project demonstrates the use of aggregation, filtering, and ranking functions in SQL.

---

## Dataset
The `spotify_songs_dataset` table includes the following columns:

| Column | Type | Description |
|--------|------|-------------|
| `song_id` | text | Unique identifier for the song |
| `song_title` | text | Title of the song |
| `artist` | text | Name of the artist |
| `album` | text | Album name |
| `genre` | text | Genre of the song |
| `release_date` | text | Release date of the song |
| `popularity` | int | Popularity score of the song |
| `label` | text | Record label |
| `composer` | text | Composer of the song |
| `producer` | text | Producer of the song |
| `collaboration` | text | Collaborating artists (if any) |

---

## Queries Included

1. **Basic Exploration**  
   - Select all records from the dataset  
   - Describe the table structure  

2. **Artist Popularity**  
   - Average popularity per artist  
   - Count of artists with an average popularity of 100  

3. **Genre Analysis**  
   - Song count per genre  
   - Average popularity per genre  
   - Top 3 songs per genre by popularity  

4. **Label Analysis**  
   - Song count per label  
   - Average popularity by label  
   - Labels with the most albums  

5. **Album Analysis**  
   - Artists with the most albums  
   - Artists with the widest genre diversity  

6. **Recent and Notable Songs**  
   - Songs released after 2020 with popularity greater than 80  
   - Songs where the artist and producer are the same person (self-produced tracks)  

---

## Skills Demonstrated
- SQL aggregation: `COUNT()`, `AVG()`, `DISTINCT`  
- Filtering with `WHERE` and `HAVING`  
- Ranking using `ROW_NUMBER()` with `PARTITION BY`  
- Grouping data with `GROUP BY`  
- Ordering results with `ORDER BY`  
- Subqueries and derived tables  

---

## How to Use
1. Make sure you are using the database `new_schema`:

```sql
USE new_schema;
2. Execute the script in a SQL client (MySQL, MariaDB, etc.) to see the results of each query.
3. Modify the queries to explore additional insights or answer specific questions about artists, songs, or labels.

##Notes

This project is intended as a junior-level portfolio piece demonstrating SQL data analysis skills.

Further improvements could include creating visualizations, combining multiple metrics into dashboards, or integrating the analysis with Python or R for additional exploration.
