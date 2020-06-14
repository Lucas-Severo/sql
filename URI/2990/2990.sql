SELECT DISTINCT
  empregados.cpf,
  empregados.enome,
  departamentos.dnome
FROM
  empregados,
  trabalha,
  departamentos
WHERE empregados.cpf NOT IN
  (
    SELECT trabalha.cpf_emp
    FROM trabalha
    WHERE empregados.cpf = trabalha.cpf_emp
  )
AND departamentos.dnumero = empregados.dnumero
ORDER BY empregados.cpf;
