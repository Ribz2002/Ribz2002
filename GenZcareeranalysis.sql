USE genzdataset;use genzdataset;
show tables;
select * from learning_aspirations;
select * from manager_aspirations;
select * from mission_aspirations;
select * from personalized_info;
create table Table_3 as SELECT
  learning_aspirations.CareerInfluenceFactor AS Career_InfluenceFactor,
  learning_aspirations.HigherEducationAbroad AS HigherEducation_Abroad,
  learning_aspirations.PreferredWorkingEnvironment AS PreferredWorking_Environment,
  personalized_info.Gender AS Gender
FROM learning_aspirations
JOIN personalized_info ON learning_aspirations.ResponseID = personalized_info.ResponseID;
SELECT Gender, COUNT(Gender) AS Total
FROM Table_3
WHERE Gender = 'Male';
SELECT COUNT(*) 
FROM Table_3
WHERE Gender = 'Male';
select Gender, count(*)  from personalized_info Group by Gender;
select CareerInfluenceFactor, count(*)  from learning_aspirations Group by CareerInfluenceFactor;
select Career_InfluenceFactor,Gender,count(*) from Table_3 where Career_InfluenceFactor = "My Parents" and Gender = "Female" Group by Career_InfluenceFactor,Gender;
select Career_InfluenceFactor, count(*)  from Table_3 Group by Career_InfluenceFactor;
select Career_InfluenceFactor,HigherEducation_Abroad,count(*) as Total from Table_3 Group by Career_InfluenceFactor,HigherEducation_Abroad;