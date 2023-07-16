select Marketing_channels,count(Marketing_channels) as mc_count from fact_survey_responses 
where Heard_before = "NO" group by Marketing_channels order by mc_count desc