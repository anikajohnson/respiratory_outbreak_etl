CREATE TABLE combined_disease (
id serial PRIMARY KEY,
date TEXT,
country TEXT,
confirmed INT,
deaths INT,
recovered INT,
respiratory_disease text
);


select * from combined_disease
where respiratory_disease = 'Corona';

