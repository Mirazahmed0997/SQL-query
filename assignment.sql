

CREATE TABLE Rangers (
    ranger_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL
);


CREATE TABLE Species (
    species_id  SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(150) NOT NULL,
    discovery_date DATE,
    conservation_status VARCHAR(50)
);


CREATE TABLE Sightings (
    sighting_id  SERIAL PRIMARY KEY,
    ranger_id INT NOT NULL,
    species_id INT NOT NULL,
    sighting_time DATE NOT NULL,
    location VARCHAR(150) NOT NULL,
    notes TEXT,

    FOREIGN KEY (ranger_id) REFERENCES Rangers(ranger_id),
    FOREIGN KEY (species_id) REFERENCES Species(species_id)
);



INSERT INTO Rangers (ranger_id, name, region)
VALUES
(1, 'Alice Green', 'Northern Hills'),
(2, 'Bob White', 'River Delta'),
(3, 'Carol King', 'Mountain Range');

INSERT INTO Rangers (ranger_id, name, region)
VALUES
(4, 'Derek Fox','Coastal Plains')




INSERT INTO Species (species_id, common_name, scientific_name, discovery_date, conservation_status)
VALUES
(1, 'Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
(2, 'Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
(3, 'Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
(4, 'Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered');



INSERT INTO Sightings (sighting_id, species_id, ranger_id, location, sighting_time, notes)
VALUES
(1, 1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
(2, 2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
(3, 3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
(4, 1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL);



-- DROP Table rangers

-- DROP Table Species

-- DROP Table Sightings







SELECT *FROM Rangers

SELECT *FROM Species
 
SELECT *FROM Sightings


SELECT COUNT(DISTINCT species_id) AS total_unique_species
FROM Species;

SELECT * FROM Sightings
    WHERE location Ilike '%Pass'


SELECT *FROM Rangers  
   CROSS JOIN Sightings;

SELECT name,count(ranger_id)  FROM Rangers
        JOIN Sightings USING(ranger_id)
        GROUP BY name



SELECT common_name FROM Species
       WHERE species_id NOT IN (SELECT DISTINCT species_id FROM Sightings);

SELECT *
FROM Species
CROSS JOIN Rangers
CROSS JOIN Sightings;
 

SELECT name,common_name,sighting_time FROM Rangers
  CROSS  JOIN Sightings ON Species.species_id = sp.species_id
  CROSS  JOIN Species ON si.ranger_id = r.ranger_id
  ORDER BY sighting_time DESC;



SELECT sp.common_name,
       si.sighting_time,
       r.name
FROM Sightings si
JOIN Species sp ON si.species_id = sp.species_id
JOIN Rangers r ON si.ranger_id = r.ranger_id
ORDER BY si.sighting_time DESC
LIMIT 2;


UPDATE Species
SET conservation_status = 'Historic'
WHERE discovery_date < '1800-01-01';


SELECT sighting_id,
       CASE
           WHEN HOUR(sighting_time) < 12 THEN 'Morning'
           WHEN HOUR(sighting_time) BETWEEN 12 AND 17 THEN 'Afternoon'
           ELSE 'Evening'
       END AS time_of_day
FROM Sightings;


SELECT *FROM Rangers

SELECT *FROM Species
 
SELECT *FROM Sightings
    


DELETE FROM Rangers
WHERE ranger_id NOT IN (
    SELECT DISTINCT ranger_id
    FROM Sightings
);

