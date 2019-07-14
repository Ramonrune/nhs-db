# NHS Database


```
Projeto de Conclusão de Curso apresentado
como requisito parcial para obtenção do grau
Tecnólogo em Análise e Desenvolvimento de
Sistemas, pela Faculdade de Tecnologia de
Americana.
Time: 
RAMON LACAVA GUTIERREZ GONÇALES
LEONARDO MARTINS DE OLIVEIRA
NATÁLIA AKINA UESUGI
Orientador: Prof. Dr. Kleber de Oliveira Andrade
Área de concentração: Engenharia de Software

Americana, SP
2018


Este trabalho se trata de uma plataforma de saúde digital unificada, que permite melhor gestão de informações de saúde e processos inteligentes. 
A plataforma visa auxiliar o dia a dia das instituições de saúde e pacientes, buscando diminuir a quantidade de erros na área médica através de uma coleção consistente de dados do paciente, possibilitando que o sistema atue em qualquer instituição de saúde, e que tenha uma melhor eficiência e eficácia em atendimentos, sejam estes comuns ou de urgência e emergência.
O trabalho foi realizado em colaboração com a universidade de Durban, na África do Sul. 
A metodologia empregada durante o decorrer do trabalho foi o SCRUM, que visa a transparência, dinamicidade e agrega valor ao produto final. 
Foram desenvolvidos dois aplicativos para dispositivos móveis e um para computador, que realizam gestão de exames, diagnósticos, dados de saúde, medicamentos, instituições, médicos(as), dentre outros. 
Diversos requisitos foram coletados de forma dinâmica com as equipes sul africanas para possibilitar a integração dos sistemas tanto no Brasil quanto na África do Sul.
Todo o desenvolvimento do sistema se voltou para agregar valor aos processos e interfaces de usuário (se focando em facilidade de uso e experiencia de usuário).
Os resultados foram dois aplicativos publicados na Google Play e um sistema computadorizado, sendo que os três estão em fase de testes na África do Sul.
Conclui-se que o sistema poderá auxiliar muito no ambiente da saúde, facilitando a gestão, fornecendo processos inteligentes e uma maior agilidade no atendimento, permitindo com que pacientes possuam acesso a seus dados de saúde, e com que funcionários de saúde possuam uma maior facilidade e uma maior quantidade de dados relevantes para análise durante os atendimentos.
```
<br>
Banco de dados para o sistema NHS.

![alt text](https://github.com/Ramonrune/nhs-db/blob/master/db.png)

<br>

![alt text](https://github.com/Ramonrune/nhs-db/blob/master/db-sqlite.png)

## Dicionario de dados
<p><a name="_Toc530233661"></a>3.5.2 Dicion&aacute;rio de Dados</p>
<p>O Dicion&aacute;rio de Dados (DD) consiste em uma lista organizada de todos os elementos de dados que s&atilde;o pertinentes para o sistema. As tabelas devem conter os seguintes campos:</p>
<p><strong>Entidade:</strong>&nbsp;&eacute; o nome da entidade que foi definida no MER. A entidade &eacute; uma pessoa, objeto ou lugar que ser&aacute; considerada como objeto pelo qual temos interesse em guardar informa&ccedil;&otilde;es a seu respeito.</p>
<p><strong>Atributo:</strong>&nbsp;Os atributos s&atilde;o as caracter&iacute;sticas da entidade cliente que desejamos guardar.</p>
<p><strong>Classe:</strong>&nbsp;as classes podem ser: simples, composto, multivalorado e determinante. Simples indica um atributo normal. Composto indica que ele poder&aacute; ser dividido em outros atributos, como por exemplo, o endere&ccedil;o. Multivalorado &eacute; quando o valor do atributo poder&aacute; n&atilde;o ser &uacute;nico e determinante &eacute; um atributo que ser&aacute; usado como chave, como CPF, C&oacute;digo do cliente, etc.</p>
<p><strong>Dom&iacute;nio:</strong>&nbsp;podem ser num&eacute;ricos, texto, data e booleano. Podemos chamar tamb&eacute;m de tipo do valor que o atributo ir&aacute; receber. A defini&ccedil;&atilde;o desses tipos deve seguir um processo l&oacute;gico, exemplo: nome &eacute; texto, sal&aacute;rio &eacute; num&eacute;rico, data de nascimento &eacute; data e assim por diante.</p>
<p><strong>Tamanho:</strong>&nbsp;define a quantidade de caracteres que ser&atilde;o necess&aacute;rios para armazenar o seu conte&uacute;do. Geralmente o tamanho &eacute; definido apenas para atributos de dom&iacute;nio texto.</p>
<p><strong>Descri&ccedil;&atilde;o:</strong>&nbsp;&eacute; opcional e pode ser usado para descrever o que &eacute; aquele atributo ou dar informa&ccedil;&otilde;es adicionais que possam ser usadas futuramente pelo analista ou programador do sistema.</p>
<p>As tabelas&nbsp; apresentam o Dicion&aacute;rio de Dados de cada entidade.</p>
<p><a name="_Toc530233497"></a>Tabela - Dicion&aacute;rio de dados da entidade AUDIT_TRAIL</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: AUDIT_TRAIL</p>
</td>
</tr>
<tr>
<td width="121">
<p><strong>Atributo</strong></p>
</td>
<td width="106">
<p><strong>Classe</strong></p>
</td>
<td width="85">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="76">
<p><strong>Tamanho</strong></p>
</td>
<td width="217">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="121">
<p>Id_audit_trail</p>
</td>
<td width="106">
<p>Determinante</p>
</td>
<td width="85">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="217">
<p>Chave Prim&aacute;ria da tabela de Auditoria.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Event_date</p>
</td>
<td width="106">
<p>Simples</p>
</td>
<td width="85">
<p>Data</p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="217">
<p>Data em que ocorreu o evento.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Category</p>
</td>
<td width="106">
<p>Simples</p>
</td>
<td width="85">
<p>Texto</p>
</td>
<td width="76">
<p>100</p>
</td>
<td width="217">
<p>Categoria de pessoa que estava usando o sistema.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Event_name</p>
</td>
<td width="106">
<p>Simples</p>
</td>
<td width="85">
<p>Texto</p>
</td>
<td width="76">
<p>200</p>
</td>
<td width="217">
<p>Local onde ocorreu o evento.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Additional_info</p>
</td>
<td width="106">
<p>Simples</p>
</td>
<td width="85">
<p>Texto</p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="217">
<p>Informa&ccedil;&otilde;es adicionais do evento.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Id_user</p>
</td>
<td width="106">
<p>Simples</p>
</td>
<td width="85">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="217">
<p>C&oacute;digo do usu&aacute;rio que acionou o evento.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>Fonte: Elaborado pelo autor</strong></p>
<p><strong>&nbsp;</strong></p>
<p><a name="_Toc530233498"></a>Tabela - Dicion&aacute;rio de dados da entidade DIAGNOSIS</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: DIAGNOSIS</p>
</td>
</tr>
<tr>
<td width="155">
<p><strong>Atributo</strong></p>
</td>
<td width="98">
<p><strong>Classe</strong></p>
</td>
<td width="68">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="66">
<p><strong>Tamanho</strong></p>
</td>
<td width="217">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="155">
<p>Id_diagnosis</p>
</td>
<td width="98">
<p>Determinante</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="66">
<p>36</p>
</td>
<td width="217">
<p>Chave Prim&aacute;ria da tabela de diagn&oacute;sticos.</p>
</td>
</tr>
<tr>
<td width="155">
<p>Date_diagnosis</p>
</td>
<td width="98">
<p>Simples</p>
</td>
<td width="68">
<p>Data</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
<td width="217">
<p>Data do diagn&oacute;stico.</p>
</td>
</tr>
<tr>
<td width="155">
<p>Anotation</p>
</td>
<td width="98">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
<td width="217">
<p>Anota&ccedil;&otilde;es relativas ao diagn&oacute;stico.</p>
</td>
</tr>
<tr>
<td width="155">
<p>Id_patient</p>
</td>
<td width="98">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="66">
<p>36</p>
</td>
<td width="217">
<p>C&oacute;digo do paciente a qual pertence o diagn&oacute;stico.</p>
</td>
</tr>
<tr>
<td width="155">
<p>Id_physician</p>
</td>
<td width="98">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="66">
<p>36</p>
</td>
<td width="217">
<p>C&oacute;digo do m&eacute;dico que realizou o diagn&oacute;stico.</p>
</td>
</tr>
<tr>
<td width="155">
<p>Id_health_institution</p>
</td>
<td width="98">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="66">
<p>36</p>
</td>
<td width="217">
<p>C&oacute;digo da institui&ccedil;&atilde;o de sa&uacute;de na qual o diagn&oacute;stico foi realizado.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p><strong>&nbsp;</strong></p>
<p><a name="_Toc530233499"></a>Tabela - Dicion&aacute;rio de dados da entidade DIAGNOSIS_PROCEDURE</p>
<table width="613">
<tbody>
<tr>
<td colspan="5" width="613">
<p>Entidade: DIAGNOSIS_PROCEDURE</p>
</td>
</tr>
<tr>
<td width="141">
<p><strong>Atributo</strong></p>
</td>
<td width="104">
<p><strong>Classe</strong></p>
</td>
<td width="76">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="76">
<p><strong>Tamanho</strong></p>
</td>
<td width="216">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="141">
<p>Id_diagnosis_procedure</p>
</td>
<td width="104">
<p>Determinante</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="216">
<p>Chave Prim&aacute;ria da tabela de procedimentos dos diagn&oacute;sticos.</p>
</td>
</tr>
<tr>
<td width="141">
<p>Date_procedure</p>
</td>
<td width="104">
<p>Simples</p>
</td>
<td width="76">
<p>Data</p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="216">
<p>Data do procedimento.</p>
</td>
</tr>
<tr>
<td width="141">
<p>Anotation</p>
</td>
<td width="104">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="216">
<p>Anota&ccedil;&otilde;es relativas ao procedimento.</p>
</td>
</tr>
<tr>
<td width="141">
<p>Status</p>
</td>
<td width="104">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>1</p>
</td>
<td width="216">
<p><em>Status</em> do diagn&oacute;stico.</p>
</td>
</tr>
<tr>
<td width="141">
<p>Id_diagnosis</p>
</td>
<td width="104">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="216">
<p>C&oacute;digo do diagn&oacute;stico m&eacute;dico.</p>
</td>
</tr>
<tr>
<td width="141">
<p>Id_nurse</p>
</td>
<td width="104">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="216">
<p>C&oacute;digo da enfermeira que realizou o procedimento.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><a name="_Toc530233500"></a>Tabela - Dicion&aacute;rio de dados da entidade DISEASE</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: DISEASE</p>
</td>
</tr>
<tr>
<td width="141">
<p><strong>Atributo</strong></p>
</td>
<td width="100">
<p><strong>Classe</strong></p>
</td>
<td width="70">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="76">
<p><strong>Tamanho</strong></p>
</td>
<td width="217">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="141">
<p>Id_disease</p>
</td>
<td width="100">
<p>Determinante</p>
</td>
<td width="70">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="217">
<p>Chave Prim&aacute;ria da tabela de doen&ccedil;as.</p>
</td>
</tr>
<tr>
<td width="141">
<p>Name_en</p>
</td>
<td width="100">
<p>Simples</p>
</td>
<td width="70">
<p>Texto</p>
</td>
<td width="76">
<p>100</p>
</td>
<td width="217">
<p>Nome em ingl&ecirc;s da doen&ccedil;a.</p>
</td>
</tr>
<tr>
<td width="141">
<p>Name_pt</p>
</td>
<td width="100">
<p>Simples</p>
</td>
<td width="70">
<p>Texto</p>
</td>
<td width="76">
<p>100</p>
</td>
<td width="217">
<p>Nome em portugu&ecirc;s da doen&ccedil;a.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p><strong>&nbsp;</strong></p>
<p><a name="_Toc530233501"></a>Tabela - Dicion&aacute;rio de dados da entidade ERROR_LOG</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: ERROR_LOG</p>
</td>
</tr>
<tr>
<td width="118">
<p><strong>Atributo</strong></p>
</td>
<td width="96">
<p><strong>Classe</strong></p>
</td>
<td width="71">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="245">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="118">
<p>Id_error</p>
</td>
<td width="96">
<p>Determinante</p>
</td>
<td width="71">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="245">
<p>Chave Prim&aacute;ria da tabela de <em>logs</em> de erros.</p>
</td>
</tr>
<tr>
<td width="118">
<p>Event_date</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="71">
<p>Data</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="245">
<p>Data em que ocorreu o <em>log</em>.</p>
</td>
</tr>
<tr>
<td width="118">
<p>Message</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="71">
<p>Texto</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="245">
<p>Mensagem do erro ocorrido.</p>
</td>
</tr>
<tr>
<td width="118">
<p>Name_of_file</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="71">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="245">
<p>Nome do arquivo que gerou o erro.</p>
</td>
</tr>
<tr>
<td width="118">
<p>Class_name</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="71">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="245">
<p>Nome da classe que gerou o erro.</p>
</td>
</tr>
<tr>
<td width="118">
<p>Method_name</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="71">
<p>Texto</p>
</td>
<td width="74">
<p>200</p>
</td>
<td width="245">
<p>M&eacute;todo que gerou o erro.</p>
</td>
</tr>
<tr>
<td width="118">
<p>Line_number</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="71">
<p>Num&eacute;rico</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="245">
<p>N&uacute;mero da linha aonde ocorreu o erro.</p>
</td>
</tr>
<tr>
<td width="118">
<p>additional</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="71">
<p>Texto</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="245">
<p>Informa&ccedil;&otilde;es adicionais sobre o erro.</p>
</td>
</tr>
<tr>
<td width="118">
<p>Id_user</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="71">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="245">
<p>C&oacute;digo do usu&aacute;rio que gerou o erro.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233502"></a>Tabela - Dicion&aacute;rio de dados da entidade EXAM</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: EXAM</p>
</td>
</tr>
<tr>
<td width="133">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="65">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="66">
<p><strong>Tamanho</strong></p>
</td>
<td width="245">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="133">
<p>Id_exam</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="65">
<p>Texto</p>
</td>
<td width="66">
<p>36</p>
</td>
<td width="245">
<p>Chave Prim&aacute;ria do exame.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Date_exam</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="65">
<p>Data</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
<td width="245">
<p>Data em que foi realizado o exame.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Anotation</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="65">
<p>Texto</p>
</td>
<td width="66">
<p>&nbsp;</p>
</td>
<td width="245">
<p>Anota&ccedil;&otilde;es do exame.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Id_patient</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="65">
<p>Texto</p>
</td>
<td width="66">
<p>36</p>
</td>
<td width="245">
<p>C&oacute;digo do paciente que realizou o exame.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Id_physician</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="65">
<p>Texto</p>
</td>
<td width="66">
<p>36</p>
</td>
<td width="245">
<p>C&oacute;digo do m&eacute;dico que solicitou o exame.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Id_health_institution</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="65">
<p>Texto</p>
</td>
<td width="66">
<p>36</p>
</td>
<td width="245">
<p>C&oacute;digo da institui&ccedil;&atilde;o de a sa&uacute;de respons&aacute;vel pelo exame.</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><a name="_Toc530233503"></a>Tabela - Dicion&aacute;rio de dados da entidade EXAM_ATTACHMENT</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: EXAM_ATTACHMENT</p>
</td>
</tr>
<tr>
<td width="141">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="68">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="78">
<p><strong>Tamanho</strong></p>
</td>
<td width="223">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="141">
<p>Id_exam_attachment</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="78">
<p>36</p>
</td>
<td width="223">
<p>Chave prim&aacute;ria da tabela de anexos do exame.</p>
</td>
</tr>
<tr>
<td width="141">
<p>Attachment_name</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="78">
<p>100</p>
</td>
<td width="223">
<p>Nome do anexo.</p>
</td>
</tr>
<tr>
<td width="141">
<p>Id_exam</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="78">
<p>36</p>
</td>
<td width="223">
<p>C&oacute;digo do exame que possui o anexo.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233504"></a>Tabela - Dicion&aacute;rio de dados da entidade HEALTH_INSTITUTION</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: HEALTH_INSTITUTION</p>
</td>
</tr>
<tr>
<td width="133">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="74">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="229">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="133">
<p>Id_health_institution</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="229">
<p>Chave Prim&aacute;ria da tabela de Institui&ccedil;&otilde;es de Sa&uacute;de</p>
</td>
</tr>
<tr>
<td width="133">
<p>Identity_code</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>20</p>
</td>
<td width="229">
<p>C&oacute;digo de identifica&ccedil;&atilde;o da institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Name</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="229">
<p>Nome da institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Postal_code</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>8</p>
</td>
<td width="229">
<p>C&oacute;digo postal da institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Country</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>3</p>
</td>
<td width="229">
<p>Pais da institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>State</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="229">
<p>Estado/Prov&iacute;ncia da institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>City</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="229">
<p>Cidade da institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Street</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="229">
<p>Rua em que fica localizada a institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Neighborhood</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>50</p>
</td>
<td width="229">
<p>Bairro.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Number</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>10</p>
</td>
<td width="229">
<p>N&uacute;mero da institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Photo</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="229">
<p>Foto da institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Latitude</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Num&eacute;rico</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="229">
<p>Latitude da localiza&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Longitude</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Num&eacute;rico</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="229">
<p>Longitude da localiza&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="133">
<p>Telephone</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>20</p>
</td>
<td width="229">
<p>Telefone da institui&ccedil;&atilde;o.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233505"></a>Tabela - Dicion&aacute;rio de dados da entidade MEDICINE</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: MEDICINE</p>
</td>
</tr>
<tr>
<td width="104">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="68">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="264">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="104">
<p>Id_medicine</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="264">
<p>Chave Prim&aacute;ria do medicamento.</p>
</td>
</tr>
<tr>
<td width="104">
<p>Name</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="264">
<p>Nome do medicamento.</p>
</td>
</tr>
<tr>
<td width="104">
<p>Language</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>3</p>
</td>
<td width="264">
<p>Linguagem que foi utilizada para inserir o medicamento (Ingl&ecirc;s ou Portugu&ecirc;s).</p>
</td>
</tr>
<tr>
<td width="104">
<p>Country</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>3</p>
</td>
<td width="264">
<p>Pais que foi inserido o medicamento.</p>
</td>
</tr>
<tr>
<td width="104">
<p>Status&nbsp;</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="264">
<p><em>Status</em> do medicamento (Ativo/Inativo).</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233506"></a>Tabela - Dicion&aacute;rio de dados da entidade NURSE</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: NURSE</p>
</td>
</tr>
<tr>
<td width="121">
<p><strong>Atributo</strong></p>
</td>
<td width="96">
<p><strong>Classe</strong></p>
</td>
<td width="68">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="245">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="121">
<p>Id_nurse</p>
</td>
<td width="96">
<p>Determinante</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="245">
<p>Chave Prim&aacute;ria da tabela de enfermeira.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Id_user</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="245">
<p>C&oacute;digo do usu&aacute;rio que foi cadastrado como enfermeira.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Nurse_code</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>15</p>
</td>
<td width="245">
<p>C&oacute;digo da enfermeira.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Nurse_type</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>2</p>
</td>
<td width="245">
<p>Tipo de enfermeira.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233507"></a>Tabela &ndash; Dicion&aacute;rio de dados da entidade NURSE_HAS_SPECIALIZATION</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: NURSE_HAS_SPECIALIZATION</p>
</td>
</tr>
<tr>
<td width="183">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="72">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="76">
<p><strong>Tamanho</strong></p>
</td>
<td width="179">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="183">
<p>Id_nurse_has_specialization</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="72">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="179">
<p>Chave Prim&aacute;ria da tabela de especializa&ccedil;&atilde;o da enfermeira.</p>
</td>
</tr>
<tr>
<td width="183">
<p>Id_nurse</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="72">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="179">
<p>C&oacute;digo da enfermeira.</p>
</td>
</tr>
<tr>
<td width="183">
<p>Id_specialization</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="72">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="179">
<p>C&oacute;digo da especializa&ccedil;&atilde;o atribu&iacute;da a especializa&ccedil;&atilde;o da enfermeira.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233508"></a>Tabela - Dicion&aacute;rio de dados da entidade NURSE_SPECIALIZATION</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: NURSE_SPECIALIZATION</p>
</td>
</tr>
<tr>
<td width="113">
<p>Atributo</p>
</td>
<td width="95">
<p>Classe</p>
</td>
<td width="66">
<p>Dom&iacute;nio</p>
</td>
<td width="71">
<p>Tamanho</p>
</td>
<td width="260">
<p>Descri&ccedil;&atilde;o</p>
</td>
</tr>
<tr>
<td width="113">
<p>Id_specialization</p>
</td>
<td width="95">
<p>Determinante</p>
</td>
<td width="66">
<p>Texto</p>
</td>
<td width="71">
<p>36</p>
</td>
<td width="260">
<p>Chave Prim&aacute;ria da especializa&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="113">
<p>Name_pt</p>
</td>
<td width="95">
<p>Simples</p>
</td>
<td width="66">
<p>Texto</p>
</td>
<td width="71">
<p>100</p>
</td>
<td width="260">
<p>Nome em portugu&ecirc;s da especializa&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="113">
<p>Name_en</p>
</td>
<td width="95">
<p>Simples</p>
</td>
<td width="66">
<p>Texto</p>
</td>
<td width="71">
<p>100</p>
</td>
<td width="260">
<p>Nome em ingl&ecirc;s da especializa&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="113">
<p>Country</p>
</td>
<td width="95">
<p>Simples</p>
</td>
<td width="66">
<p>Texto</p>
</td>
<td width="71">
<p>3</p>
</td>
<td width="260">
<p>Pa&iacute;s que possui a especializa&ccedil;&atilde;o em especifico.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p><u>&nbsp;</u></p>
<p><a name="_Toc530233509"></a>Tabela - Dicion&aacute;rio de dados da entidade PATIENT</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: PATIENT</p>
</td>
</tr>
<tr>
<td width="121">
<p><strong>Atributo</strong></p>
</td>
<td width="96">
<p><strong>Classe</strong></p>
</td>
<td width="76">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="76">
<p><strong>Tamanho</strong></p>
</td>
<td width="236">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="121">
<p>Id_patient</p>
</td>
<td width="96">
<p>Determinante</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="236">
<p>Chave Prim&aacute;ria da tabela de paciente (c&oacute;digo do paciente).</p>
</td>
</tr>
<tr>
<td width="121">
<p>Blood_type</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>2</p>
</td>
<td width="236">
<p>Tipo sangu&iacute;neo do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Color</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>2</p>
</td>
<td width="236">
<p>Cor da pele do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Father_name</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>100</p>
</td>
<td width="236">
<p>Nome do pai.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Mother_name</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>100</p>
</td>
<td width="236">
<p>Nome da m&atilde;e.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Weight</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="76">
<p>Num&eacute;rico</p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="236">
<p>Peso do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Height</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="76">
<p>Num&eacute;rico</p>
</td>
<td width="76">
<p>&nbsp;</p>
</td>
<td width="236">
<p>Altura do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Id_user</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="236">
<p>C&oacute;digo do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="121">
<p>Status</p>
</td>
<td width="96">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>1</p>
</td>
<td width="236">
<p><em>Status</em> dizendo se o paciente est&aacute; ativo ou inativo.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p><strong>&nbsp;</strong></p>
<p><a name="_Toc530233510"></a>Tabela - Dicion&aacute;rio de dados da entidade PATIENT_HAS_DISEASE</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: PATIENT_HAS_DISEASE</p>
</td>
</tr>
<tr>
<td width="160">
<p><strong>Atributo</strong></p>
</td>
<td width="95">
<p><strong>Classe</strong></p>
</td>
<td width="68">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="208">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="160">
<p>Id_patient_has_disease</p>
</td>
<td width="95">
<p>Determinante</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="208">
<p>Chave Prim&aacute;ria da tabela de doen&ccedil;as do paciente.</p>
</td>
</tr>
<tr>
<td width="160">
<p>Id_patient</p>
</td>
<td width="95">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="208">
<p>C&oacute;digo do paciente que possui a doen&ccedil;a.</p>
</td>
</tr>
<tr>
<td width="160">
<p>Id_disease</p>
</td>
<td width="95">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="208">
<p>C&oacute;digo da doen&ccedil;a possu&iacute;da.</p>
</td>
</tr>
<tr>
<td width="160">
<p>Anotations</p>
</td>
<td width="95">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="208">
<p>Anota&ccedil;&otilde;es relativa a doen&ccedil;a do paciente.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233511"></a>Tabela - Dicion&aacute;rio de dados da entidade PATIENT_HAS_TAG</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: PATIENT_HAS_TAG</p>
</td>
</tr>
<tr>
<td width="132">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="68">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="236">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="132">
<p>Id_patient_has_tag</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="236">
<p>Chave Prim&aacute;ria da tabela de <em>tag</em> do paciente.</p>
</td>
</tr>
<tr>
<td width="132">
<p>Mac_code</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="236">
<p>C&oacute;digo <em>MAC</em> da <em>tag</em> <em>NFC</em>.</p>
</td>
</tr>
<tr>
<td width="132">
<p>Id_patient</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="236">
<p>C&oacute;digo do paciente que possui o equipamento de acesso.</p>
</td>
</tr>
<tr>
<td width="132">
<p>Tag_type</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>2</p>
</td>
<td width="236">
<p>Tipo do equipamento de acesso.</p>
</td>
</tr>
<tr>
<td width="132">
<p>Name</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="236">
<p>Nome do equipamento de acesso.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233512"></a>Tabela - Dicion&aacute;rio de dados da entidade PATIENT_USE_MEDICINE</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: PATIENT_USE_MEDICINE</p>
</td>
</tr>
<tr>
<td width="170">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="76">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="76">
<p><strong>Tamanho</strong></p>
</td>
<td width="189">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="170">
<p>Id_patient_use_medicine</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="189">
<p>Chave Prim&aacute;ria da tabela de medicamentos do paciente.</p>
</td>
</tr>
<tr>
<td width="170">
<p>Id_patient</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="189">
<p>C&oacute;digo do paciente.</p>
</td>
</tr>
<tr>
<td width="170">
<p>Id_medicine</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="76">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="189">
<p>C&oacute;digo do medicamento.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p><strong>&nbsp;</strong></p>
<p><a name="_Toc530233513"></a>Tabela - Dicion&aacute;rio de dados da entidade PHYSICIAN</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: PHYSICIAN</p>
</td>
</tr>
<tr>
<td width="129">
<p><strong>Atributo</strong></p>
</td>
<td width="98">
<p><strong>Classe</strong></p>
</td>
<td width="68">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="76">
<p><strong>Tamanho</strong></p>
</td>
<td width="234">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="129">
<p>Id_physician</p>
</td>
<td width="98">
<p>Determinante</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="234">
<p>Chave Prim&aacute;ria da tabela de m&eacute;dicos.</p>
</td>
</tr>
<tr>
<td width="129">
<p>Id_user</p>
</td>
<td width="98">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="76">
<p>36</p>
</td>
<td width="234">
<p>C&oacute;digo do usu&aacute;rio que foi cadastrado como m&eacute;dico.</p>
</td>
</tr>
<tr>
<td width="129">
<p>Practice_document</p>
</td>
<td width="98">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="76">
<p>20</p>
</td>
<td width="234">
<p>C&oacute;digo de licen&ccedil;a do m&eacute;dico.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233514"></a>Tabela - Dicion&aacute;rio de dados da entidade PHYSICIAN_ATTENDANCE</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: PHYSICIAN_ATTENDANCE</p>
</td>
</tr>
<tr>
<td width="162">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="74">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="200">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="162">
<p>Id_physician_attendance</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="200">
<p>Chave Prim&aacute;ria da tabela de atendimento m&eacute;dico.</p>
</td>
</tr>
<tr>
<td width="162">
<p>Date_attendance</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Data</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="200">
<p>Data em que ocorreu o atendimento.</p>
</td>
</tr>
<tr>
<td width="162">
<p>Id_patient</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="200">
<p>C&oacute;digo do paciente que foi atendido.</p>
</td>
</tr>
<tr>
<td width="162">
<p>Id_physician</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="200">
<p>C&oacute;digo do m&eacute;dico que realizou o atendimento.</p>
</td>
</tr>
<tr>
<td width="162">
<p>Id_health_institution</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="200">
<p>C&oacute;digo da institui&ccedil;&atilde;o de sa&uacute;de onde foi realizado o atendimento.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233515"></a>Tabela - Dicion&aacute;rio de dados da entidade PHYSICIAN_HAS_SPECIALIZATION</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: PHYSICIAN_HAS_SPECIALIZATION</p>
</td>
</tr>
<tr>
<td width="208">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="68">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="160">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="208">
<p>Id_physician_has_specialization</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="160">
<p>Chave Prim&aacute;ria da especializa&ccedil;&atilde;o que o m&eacute;dico possui.</p>
</td>
</tr>
<tr>
<td width="208">
<p>Id_physician</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="160">
<p>C&oacute;digo do m&eacute;dico que possui a especializa&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="208">
<p>Id_specialization</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="160">
<p>C&oacute;digo da especializa&ccedil;&atilde;o possu&iacute;da.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233516"></a>Tabela - Dicion&aacute;rio de dados da entidade PHYSICIAN_ SPECIALIZATION</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: PHYSICIAN_SPECIALIZATION</p>
</td>
</tr>
<tr>
<td width="132">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="68">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="236">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="132">
<p>Id_specialization</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="236">
<p>Chave Prim&aacute;ria da especializa&ccedil;&atilde;o do m&eacute;dico.</p>
</td>
</tr>
<tr>
<td width="132">
<p>Name_pt</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="236">
<p>Nome em portugu&ecirc;s da especializa&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="132">
<p>Name_en</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="236">
<p>Nome em ingl&ecirc;s da especializa&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="132">
<p>Country</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="68">
<p>Texto</p>
</td>
<td width="74">
<p>3</p>
</td>
<td width="236">
<p>Local que existe a especializa&ccedil;&atilde;o.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233517"></a>Tabela - Dicion&aacute;rio de dados da entidade USER_AND_HEALTH_INSTITUTION</p>
<table width="606">
<tbody>
<tr>
<td colspan="5" width="606">
<p>Entidade: USER_AND_HEALTH_INSTITUTION</p>
</td>
</tr>
<tr>
<td width="212">
<p><strong>Atributo</strong></p>
</td>
<td width="97">
<p><strong>Classe</strong></p>
</td>
<td width="63">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="71">
<p><strong>Tamanho</strong></p>
</td>
<td width="164">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="212">
<p>Id_user_works_in_health_institution</p>
</td>
<td width="97">
<p>Determinante</p>
</td>
<td width="63">
<p>Texto</p>
</td>
<td width="71">
<p>36</p>
</td>
<td width="164">
<p>Chave Prim&aacute;ria do usu&aacute;rio da institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="212">
<p>Id_user</p>
</td>
<td width="97">
<p>Simples</p>
</td>
<td width="63">
<p>Texto</p>
</td>
<td width="71">
<p>36</p>
</td>
<td width="164">
<p>C&oacute;digo do usu&aacute;rio que pertence a institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="212">
<p>Id_health_institution</p>
</td>
<td width="97">
<p>Simples</p>
</td>
<td width="63">
<p>Texto</p>
</td>
<td width="71">
<p>36</p>
</td>
<td width="164">
<p>C&oacute;digo da institui&ccedil;&atilde;o.</p>
</td>
</tr>
<tr>
<td width="212">
<p>Status</p>
</td>
<td width="97">
<p>Simples</p>
</td>
<td width="63">
<p>Texto</p>
</td>
<td width="71">
<p>1</p>
</td>
<td width="164">
<p>Estado do usu&aacute;rio na institui&ccedil;&atilde;o (ativo/inativo).</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p>&nbsp;</p>
<p><a name="_Toc530233518"></a>Tabela - Dicion&aacute;rio de dados da entidade USER_HEALTH</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: USER_HEALTH</p>
</td>
</tr>
<tr>
<td width="123">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="75">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="238">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="123">
<p>Id_user</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="238">
<p>Chave Prim&aacute;ria da tabela de usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Login</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="238">
<p>Login para acesso aos sistemas.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Password</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>64</p>
</td>
<td width="238">
<p>Senha utilizada para acesso aos sistemas.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Name</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="238">
<p>Nome do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Type_of_user</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>2</p>
</td>
<td width="238">
<p>Tipo de usu&aacute;rio (Admin, M&eacute;dico, Paciente e outros).</p>
</td>
</tr>
<tr>
<td width="123">
<p>Born_date</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Data</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="238">
<p>Data de nascimento.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Gender</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>1</p>
</td>
<td width="238">
<p>G&ecirc;nero do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Postal_code</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>8</p>
</td>
<td width="238">
<p>C&oacute;digo postal do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Country</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>3</p>
</td>
<td width="238">
<p>Pa&iacute;s do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>State</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="238">
<p>Estado do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>City</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="238">
<p>Cidade do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Street</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>100</p>
</td>
<td width="238">
<p>Rua do Usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Neighborhood</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>50</p>
</td>
<td width="238">
<p>Bairro.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Number</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>10</p>
</td>
<td width="238">
<p>N&uacute;mero da resid&ecirc;ncia do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Photo</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>10</p>
</td>
<td width="238">
<p>Foto do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Identity_document</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="238">
<p>Documento de identidade do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Telephone</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>20</p>
</td>
<td width="238">
<p>Telefone do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="123">
<p>Secret_code</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="75">
<p>Texto</p>
</td>
<td width="74">
<p>4</p>
</td>
<td width="238">
<p>C&oacute;digo secreto do usu&aacute;rio.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><a name="_Toc530233519"></a>Tabela - Dicion&aacute;rio de dados da entidade PATIENT_USES_MEDICINE do SQLite</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: PATIENT_USES_MEDICINE</p>
</td>
</tr>
<tr>
<td width="169">
<p><strong>Atributo</strong></p>
</td>
<td width="94">
<p><strong>Classe</strong></p>
</td>
<td width="74">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="74">
<p><strong>Tamanho</strong></p>
</td>
<td width="193">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="169">
<p>id_patient_uses_medicine</p>
</td>
<td width="94">
<p>Determinante</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="193">
<p>Chave Prim&aacute;ria da tabela.</p>
</td>
</tr>
<tr>
<td width="169">
<p>id_user</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="193">
<p>Identificador do usu&aacute;rio.</p>
</td>
</tr>
<tr>
<td width="169">
<p>remember</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Num&eacute;rico</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="193">
<p>Indica se o determinado medicamento deve ou n&atilde;o ser lembrado.</p>
</td>
</tr>
<tr>
<td width="169">
<p>name</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="193">
<p>Nome do medicamento.</p>
</td>
</tr>
<tr>
<td width="169">
<p>sunday</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="193">
<p>Verifica se &eacute; necess&aacute;rio alertar o usu&aacute;rio sobre o medicamento no Domingo.</p>
</td>
</tr>
<tr>
<td width="169">
<p>monday</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Num&eacute;rico</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="193">
<p>Verifica se &eacute; necess&aacute;rio alertar o usu&aacute;rio sobre o medicamento na Segunda-feira.</p>
</td>
</tr>
<tr>
<td width="169">
<p>tuesday</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Num&eacute;rico</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="193">
<p>Verifica se &eacute; necess&aacute;rio alertar o usu&aacute;rio sobre o medicamento na Ter&ccedil;a-feira.</p>
</td>
</tr>
<tr>
<td width="169">
<p>wednesday</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Num&eacute;rico</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="193">
<p>Verifica se &eacute; necess&aacute;rio alertar o usu&aacute;rio sobre o medicamento na Quarta-feira.</p>
</td>
</tr>
<tr>
<td width="169">
<p>thursday</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Num&eacute;rico</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="193">
<p>Verifica se &eacute; necess&aacute;rio alertar o usu&aacute;rio sobre o medicamento na Quinta-feira.</p>
</td>
</tr>
<tr>
<td width="169">
<p>friday</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Num&eacute;rico</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="193">
<p>Verifica se &eacute; necess&aacute;rio alertar o usu&aacute;rio sobre o medicamento na Sexta-feira.</p>
</td>
</tr>
<tr>
<td width="169">
<p>saturday</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Num&eacute;rico</p>
</td>
<td width="74">
<p>&nbsp;</p>
</td>
<td width="193">
<p>Verifica se &eacute; necess&aacute;rio alertar o usu&aacute;rio sobre o medicamento no S&aacute;bado.</p>
</td>
</tr>
<tr>
<td width="169">
<p>id_medicine</p>
</td>
<td width="94">
<p>Simples</p>
</td>
<td width="74">
<p>Texto</p>
</td>
<td width="74">
<p>36</p>
</td>
<td width="193">
<p>Identificador do medicamento.</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><a name="_Toc530233520"></a>Tabela - Dicion&aacute;rio de dados da entidade PATIENT_USES_MEDICINE_IN_HOUR do SQLite</p>
<table>
<tbody>
<tr>
<td colspan="5" width="604">
<p>Entidade: PATIENT_USES_MEDICINE_IN_HOUR</p>
</td>
</tr>
<tr>
<td width="205">
<p><strong>Atributo</strong></p>
</td>
<td width="78">
<p><strong>Classe</strong></p>
</td>
<td width="78">
<p><strong>Dom&iacute;nio</strong></p>
</td>
<td width="69">
<p><strong>Tamanho</strong></p>
</td>
<td width="174">
<p><strong>Descri&ccedil;&atilde;o</strong></p>
</td>
</tr>
<tr>
<td width="205">
<p>id_patient_uses_medicine_in_hour</p>
</td>
<td width="78">
<p>Determinante</p>
</td>
<td width="78">
<p>Texto</p>
</td>
<td width="69">
<p>36</p>
</td>
<td width="174">
<p>Chave Prim&aacute;ria da tabela.</p>
</td>
</tr>
<tr>
<td width="205">
<p>hour</p>
</td>
<td width="78">
<p>Simples</p>
</td>
<td width="78">
<p>Num&eacute;rico</p>
</td>
<td width="69">
<p>&nbsp;</p>
</td>
<td width="174">
<p>Indica o hor&aacute;rio que o medicamento deve ser consumido.</p>
</td>
</tr>
<tr>
<td width="205">
<p>id_patient_uses_medicine</p>
</td>
<td width="78">
<p>Simples</p>
</td>
<td width="78">
<p>Texto</p>
</td>
<td width="69">
<p>36</p>
</td>
<td width="174">
<p>Identificador da tabela PATIENT_USES_MEDICINE</p>
</td>
</tr>
</tbody>
</table>
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Fonte: Elaborado pelo autor</strong></p>
<p><strong>&nbsp;</strong></p>

## Licença

    Copyright 2019 
    
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
