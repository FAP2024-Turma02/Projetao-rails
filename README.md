## Projeto: Exercício de Fixação - Models em Rails

### Objetivo

Este exercício tem como objetivo praticar a criação e utilização de Models no framework Rails, um dos pilares fundamentais da arquitetura MVC (Model-View-Controller). O foco será na reestruturação da classe de funcionários criada anteriormente em um projeto usando Rails, com a adição de validações usando ActiveRecord.

### Tarefas

1. **Criação do Model User:**
   - Utilizar o comando `rails generate scaffold` para gerar um scaffold para o model `User`.
   - Este User deve possuir as seguintes colunas no banco de dados:
     - `name` (string)
     - `document` (string)
     - `role` (integer)

2. **Validações:**
   - No model `User`, implementar as seguintes validações:
     - `name`: Validar a presença do nome.
     - `document`: Validar a presença e a unicidade do documento.

3. **Exploração Adicional:**
   - Caso identifique outras validações que possam ser aplicadas, fique à vontade para implementá-las e destacá-las para discussão na próxima aula.

4. **Desafio Extra:**
   - Imaginar e implementar um segundo model que não seja relacionado a `User`, com campos que façam sentido para o novo model.
   - Criar validações para os campos deste novo model.
   - Testar as validações utilizando o Rails Console.


### Links Úteis

- [Documentação sobre ActiveRecord Validations](https://guides.rubyonrails.org/active_record_validations.html)
