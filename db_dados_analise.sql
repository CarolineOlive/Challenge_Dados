/*
ids = a
dados_mutuarios = b 
emprestimos = c 
historicos_banco = d 
*/

select lower(a.person_id) as id_solicitante
	 , b.person_age as idade
     , b.person_income as salario
     , case when b.person_home_ownership = 'Rent' then 'Alugado'
		when b.person_home_ownership = 'Mortgage' then 'Hipotecada'
        when b.person_home_ownership = 'Own' then 'Própria'
        when b.person_home_ownership = 'Other' then 'Outros casos'
        else null
        end as situacao_imovel
     , b.person_emp_length as tempo_trabalho
     -- , lower(c.loan_id) as id_solicitacao_emprestimo
     , case when c.loan_intent = 'Personal' then 'Pessoal'
		when c.loan_intent = 'Education' then 'Educação'
        when c.loan_intent = 'Medical' then 'Médico'
        when c.loan_intent = 'Venture' then 'Empreendimento'
        when c.loan_intent = 'Homeimprovement' then 'Reforma residencial'
        when c.loan_intent = 'Debtconsolidation ' then 'Pegamento de dívidas'
        else null
        end as motivo_emprestimo
     , c.loan_grade as pontuacao_emprestimo
     , c.loan_amnt as valor_solicitado
     , c.loan_int_rate as taxa_juros
     , c.loan_status as possibilidade_inadimplencia
     , c.loan_percent_income as percentual_renda
     -- , lower(d.cb_id) as id_historico_solicitante
     , d.cb_person_cred_hist_length as tempo_historico_solicitacoes
     , case when d.cb_person_default_on_file = 'N' then 'N'
		when d.cb_person_default_on_file = 'Y' then 'S'
        else null
        end as adimplente
from ids a
inner join dados_mutuarios b on a.person_id = b.person_id
inner join emprestimos c on c.loan_id = a.loan_id
inner join historicos_banco d on d.cb_id = a.cb_id;

