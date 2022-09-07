# Challenge_Dados

<h2>Projeto de Análise de Crédito | Alura Cash</h2>
<h3>Contextualização do Projeto</h3>
  <p> O projeto envolve o uso de três ferramentas muito utilizadas em ciência de dados:
  <li> <b>SQL</b>: para extração, tratamento e leitura dos dados dentro do banco de dados MySQL
  <li> <b>Python</b>: para análise exploratório e desenvolvimento de modelo de predição
  <li> <b>Power Bi</b>: para apresentação das informações obtidas na forma de visualizações

<h3>Objeto</h3>

<ul>
  <p>Reduzir as perdas financeiras devido a pessoas mutuarias que não quitam suas dívidas, ,por meio de estudo das informações financeiras e de solicitação de empréstimo para encontrar padrões que possam indicar uma possível inadimplência.</p>
</ul>

<h3>Etapas | Resumo</h3>
  <p><h4> Primeira etapa: Obtenção dos dados</p></h4>
    <p>O backup do banco de dados mysql foi restaurado e as informações contidas nas quatro tabelas disponíveis, foram unidas por meio de uma query. Para facilitar o entendimento das informações contidas em cada colunas, foi feita a tradução das informações. Com todos os dados reunidos, a tabela foi exportada em formato .csv para ser usada como base de dados na etapa de análise exploratório e preditiva.
  <p><h4> Segunda etapa: (<i>em desenvolvimento</i> 💻)
  <ul> 
    <p><li> Análise exploratória:</p>
    <p><li> Análise preditiva:</p>
  </ul>
  <p><h4> Terceira Etapa: Visualização dos dados (<i>in backlog</i> 📊)</p></h4>


_____
<h4> Dados </h4>
<p> Os dados foram fornecidos na forma de backup de um banco de dados MySQL com as informações dos clientes.
<ul>
  <b>Banco de dados MySQL - 'Análise de risco'</b>
    <ul>
    <b><li>Tabelas</li></b>
        <ul>
        <li>Dados_mutuarios
         <p>Dados pessoais de cada solicitante de empréstimo.</p>
          <ul>
          <li>person_id: ID do solicitante
          <li>person_age: idade (anos)
          <li>person_income: salário anual
          <li>person_home_ownership: situação do imóvel
          <li>person_emp_lenght: tempo de trabalho (anos)
          </ul>
        <li>Emprestimos
         <p>Informações do empréstimo solicitado.</p>
          <ul>
          <li>loan_id: ID da solicitação de empréstimo
          <li>loan_intent: Motivo do empréstimo
          <li>loan_grade: pontuação de empréstimos de A a G
          <li>loan_amnt: valor total do empréstimo solicitado
          <li>loan_in_rate: Taxas de juros
          <li>loan_status: Possibilidade de inadimplência
          <li>loan_percent_income: renda percentual valor do empréstimo  e salário anual
          </ul>
        <li>historicos_banco
          <ul>
          <li>cb_id: ID do histórico de cada solicitante
          <li>cb_person_default_on_file: Indica se a pessoa já foi inadimplente
          <li>cb_person_cred_hist_length: Tempo - em anos - desde a primeira solicitação de crédito ou aquisição de um cartão de crédito
          </ul>
        <li>id
          <ul>
          <li>person_id: ID da pessoa solicitante
          <li>loan_id: ID da solicitação de empréstimo de cada solicitante
          <li>cb_id: ID do histórico de cada solicitante
          </ul>
       </ul>
   </ul>
</ul>

<p>l
