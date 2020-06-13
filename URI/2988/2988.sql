SELECT 
  teams.name,
  
  -- matches --
  (
    SELECT COUNT(matches.team_1)
    FROM matches
    WHERE teams.id = matches.team_1
  )
  
  +
  
  (
    SELECT COUNT(matches.team_2)
    FROM matches
    WHERE teams.id = matches.team_2
  ) AS matches,
  
  -- victories --
  
  (
    SELECT COUNT(matches.team_1)
    FROM matches
    WHERE teams.id = matches.team_1
    AND matches.team_1_goals > matches.team_2_goals
  )
  
  +
  
  (
    SELECT COUNT(matches.team_2)
    FROM matches
    WHERE teams.id = matches.team_2
    AND matches.team_1_goals < matches.team_2_goals
  ) AS victories,
  
  -- defeats --
  
  (
    SELECT COUNT(matches.team_1)
    FROM matches
    WHERE teams.id = matches.team_1
    AND matches.team_1_goals < matches.team_2_goals
  )
  
  +
  
  (
    SELECT COUNT(matches.team_2)
    FROM matches
    WHERE teams.id = matches.team_2
    AND matches.team_1_goals > matches.team_2_goals
  ) AS defeats,
  
  -- draws --
  
  (
    SELECT COUNT(matches.team_1)
    FROM matches
    WHERE teams.id = matches.team_1
    AND matches.team_1_goals = matches.team_2_goals
  )
  
  +
  
  (
    SELECT COUNT(matches.team_2)
    FROM matches
    WHERE teams.id = matches.team_2
    AND matches.team_1_goals = matches.team_2_goals
  ) AS draws,
  
  -- score --
  
  (
    SELECT SUM(
      CASE 
        WHEN matches.team_1_goals > matches.team_2_goals THEN 3
        WHEN matches.team_1_goals < matches.team_2_goals THEN 0
        ELSE 1 END
    )
    FROM matches
    WHERE teams.id = matches.team_1
  )
  
  +
  
  (
    SELECT SUM(
      CASE 
        WHEN matches.team_2_goals > matches.team_1_goals THEN 3
        WHEN matches.team_2_goals < matches.team_1_goals THEN 0
        ELSE 1 END
    )
    FROM matches
    WHERE teams.id = matches.team_2
  ) AS score
  
FROM teams
ORDER BY score DESC;
