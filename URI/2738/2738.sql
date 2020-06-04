SELECT candidate.name, 
   CAST(( 
     (score.math*2) + 
     (score.specific*3) + 
     (score.project_plan*5)
   )/10 AS DECIMAL(4, 2)) AS avg
FROM candidate, score
WHERE candidate.id = score.candidate_id
ORDER BY avg DESC;
