select Packaging_preference,count(Packaging_preference) as count from fact_survey_responses group by Packaging_preference