CREATE VIEW vw_consultas_realizadas AS
SELECT 
    p.nome        AS nome_paciente,
    m.nome        AS nome_medico,
    m.especialidade,
    c.valor,
    c.data_consulta
FROM 
    Consulta c
    INNER JOIN Paciente p ON c.id_paciente = p.id_paciente
    INNER JOIN Medico m   ON c.id_medico   = m.id_medico;
