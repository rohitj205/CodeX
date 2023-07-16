SELECT case when Age = "15-18" then "Youth"
   when Age = "19-30" then "Youth"
   when Age = "31-45" then "Middle Aged"
   when Age = "46-65" then "Middle Aged"
   when Age = "65+" then "Senior Citizen"
   END as age_range  , f.Marketing_channels , count(f.Marketing_channels) as markerting_preference FROM 
dim_repondents r JOIN fact_survey_responses f 
ON r.Respondent_ID = f.Respondent_ID
group by Marketing_channels limit 3