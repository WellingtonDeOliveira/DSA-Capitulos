/* Exercicio 1 */
select round(avg(idade)), numero_filhos, grau_instrucao from cap16."TB_FUNC"
where salario_hora > (select avg(salario_hora) from cap16."TB_FUNC")
and reg_procedencia = 'capital' 
and estado_civil = 'casado'
group by numero_filhos, grau_instrucao
order by avg(idade) desc;

/* Exercicio 2 */
select * from cap16."TB_FUNC" 
where cast(numero_filhos as integer) = 2;