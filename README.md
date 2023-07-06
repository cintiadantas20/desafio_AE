# Construindo um pipeline de dados com a metodologia do Modern Analytics Stack e o banco de dados Adventure Works

Este projeto tem por finalidade construir uma pipeline de dados para responder a perguntas de negócio com base no banco de dados Adventure Works. É um desafio proposto no ciclo técnico do Programa Lighthouse, para obter a certificação em Analytics Engineer da Indicium Tech.

O projeto foi feito com procedimentos de ingestão, transformação, carregamento e visualização dos dados, com a utilização do Big Query como data warehouse, conectado com o dbt para processamento dos dados, e com o Power BI para a visualização. Para versionamento e repositório do código, o Github e como ferramenta de apoio na exploração dos dados, o Dbeaver.

## Perguntas de negócio

Neste desafio, as perguntas de negócio foram:

a - Qual o número de pedidos, quantidade comprada, valor total negociado por produto, tipo de cartão, motivo de venda, data de venda, cliente, status, cidade, estado e país?

b - Quais os produtos com maior ticket médio por mês, ano, cidade, estado e país? (ticket médio = Faturamento bruto - descontos do produto / número de pedidos no período de análise)

c - Quais os 10 melhores clientes por valor total negociado filtrado por produto, tipo de cartão, motivo de venda, data de venda, status, cidade, estado e país?

d - Quais as 5 melhores cidades em valor total negociado por produto, tipo de cartão, motivo de venda, data de venda, cliente, status, cidade, estado e país?

e - Qual o número de pedidos, quantidade comprada, valor total negociado por mês e ano (dica: gráfico de série de tempo)?

f - Qual produto tem a maior quantidade de unidades compradas para o motivo de venda “Promotion”?

## Preparação do Big Query

Para usar o Big Query como ferramenta de data warehouse, é necessário criar uma conta no Google Cloud Platform, que oferece condições de free trial de 3 meses e crédito de US$ 300. Uma boa dica para fazer esse passo a passo é buscar a etapa na barra superior do console do GCP e acessar o recurso

Após isso, crie um projeto, dando um nome e um local para ele. Em seguida, clique em criar e o selecione para trabalhar nele.

Procure "Contas de serviço" na barra superior e crie uma conta com permissão de proprietário, na aba "permissões". Vá na aba "chaves" e adicione uma chave. Será baixado no seu computador um arquivo JSON automaticamente, que será usado para conectar o dbt com o Big Query.

## Instalação do dbt

Agora, é necessário criar um repositório no Github para abrigar as tabelas. Clone este repositório para facilitar sua vida com o comando

`git clone https://github.com/cintiadantas20/desafio_AE`

Na sua máquina, crie um ambiente virtual e o ative com os comandos:

`python –m venv venv`

`source venv/bin/activate`

Instale os pacotes necessários para o projeto com:

`pip install -r desafioaeadw/requirements.txt`

Inicie o dbt com `dbt init` e siga fornecendo as informações que o programa pede.

Configure o dbt e altere os arquivos padrão de configuração profiles.yml, com o nome do projeto do Big Query e dbt_project.yml, com informações sobre a conexão.

Inicie o serviço de nuvem com `gcloud init` e selecione o projeto que você criou no Big Query para acessar.

Verifique se todos os requisitos estão cumpridos com `dbt debug`

## Acesso dos dados com o dbt

Salve as tabelas da pasta seeds desse repositório na pasta seeds criada pelo dbt na sua máquina e use o comando `dbt seeds` para popular o Big Query com essas tabelas.

O dbt trabalha com 3 camadas para transformação dos dados: staging, intermediate e marts, com a criação de arquivos .sql e .yml. No primeiro, você deverá escrever as consultas para elaboração das tabelas. No segundo, ficam os testes das colunas e documentação.

Você poderá rodar o dbt por inteiro com `dbt run` ou por tabelas, com `dbt run --select <nome da tabela>`. Para atualizar, pode usar o comando `--full-refresh` na frente

Para testar, o procedimento é o mesmo:

`dbt test –select source:*` roda os testes do arquivo sources.yml

`dbt test --select <nome da tabela>` roda os testes com a tabela específica

## Acesso dos dados com o dbt

Salve as tabelas da pasta seeds desse repositório na pasta seeds criada pelo dbt na sua máquina e use o comando `dbt seeds` para popular o Big Query com essas tabelas.

O dbt trabalha com 3 camadas para transformação dos dados: staging, intermediate e marts, com a criação de arquivos .sql e .yml. No primeiro, você deverá escrever as consultas para elaboração das tabelas. No segundo, ficam os testes das colunas e documentação.

Você poderá rodar o dbt por inteiro com `dbt run` ou por tabelas, com `dbt run --select <nome da tabela>`. Para atualizar, pode usar o comando `--full-refresh` na frente

Para testar, o procedimento é o mesmo:

`dbt test –select source:*` roda os testes do arquivo sources.yml

`dbt test --select <nome da tabela>` roda os testes com a tabela específica

## Agora é com você!

Sua máquina está pronta para a construção do projeto!

Para maiores informações, consulte a [[documentação]](https://docs.getdbt.com/docs/introduction) do próprio dbt e/ou veja meu vídeo no Youtube com o detalhamento da minha solução.

Não se esqueça de, no final de tudo desativar o venv, acessando a mesma pasta da ativação e digitando “deactivate”

## Autora

- [@cintiadantas20](https://github.com/cintiadantas20)
- [@Cíntia Dantas](https://www.linkedin.com/in/cintia-dantas/)
