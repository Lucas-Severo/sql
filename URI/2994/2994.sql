SELECT 

  doctors.name,
  
  (
    SELECT 
      ROUND(
         SUM((attendances.hours*150) + (attendances.hours*150)*(work_shifts.bonus/100))
      , 1)
    FROM attendances
      INNER JOIN work_shifts ON work_shifts.id = attendances.id_work_shift
    WHERE doctors.id = attendances.id_doctor
  ) AS salary 
  
FROM
  doctors
ORDER BY salary DESC;
