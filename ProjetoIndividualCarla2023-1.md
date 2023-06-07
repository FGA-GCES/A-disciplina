# Trabalho individual de GCES 2023-1 - Turma Carla


Os conhecimentos de Gestão de Configuração de Software são fundamentais no ciclo de vida de um produto de software. As técnicas para a gestão vão desde o controle de versão, automação de build e de configuração de ambiente, testes automatizados, isolamento do ambiente até o deploy do sistema. Todo este ciclo nos dias de hoje são integrados em um pipeline de DevOps com as etapas de Integração Contínua (CI) e Deploy Contínuo (CD) implementadas e automatizada.

Para exercitar estes conhecimentos, neste trabalho, você deverá aplicar os conceitos estudados ao longo da disciplina no produto de software contido neste repositório.

O sistema se trata de uma biblioteca python para executar pipelines de dados de forma customizável em bancos de dados.

Para executar a aplicação em sua máquina, basta seguir o passo-a-passo descritos abaixo.

# Resumo da aplicação 

 As aplicações disponíveis são códigos gerados a partir de pesquisas. Ou seja, os algoritmos são excelentes, a engenharia de software nem tanto. Entao vamos contribuir para a pesquisa mundial!
 Escolha seu projeto e configure o pipeline!


 # Etapas do Trabalho

 O trabalho deve ser elaborado através de etapas. Cada uma das etapas deve ser realizada em um commit separado com o resultado funcional desta etapa.

As etapas de 1 a 3 são relacionadas ao isolamento do ambiente utilizando a ferramenta Docker e Docker Compose. Neste sentido o tutorial abaixo cobre os conceitos fundamentais para o uso destas tecnologias.

[Tutorial de Docker](https://github.com/FGA-GCES/Workshop-Docker-Entrega-01/tree/main/tutorial_docker)

As etapas de 4 e 5 são relacionadas à configuração do pipeline de CI e CD.

[Tutorial CI - Gitlab](https://github.com/FGA-GCES/Workshop-CI-Entrega-02/tree/main/gitlab-ci_tutorial)


## Containerização do Banco

A primeira etapa do trabalho é de configurar um container somente para o banco de dados com as credenciais especificadas na descrição da aplicação e testar o funcionamento do mesmo.

## Containerização da aplicação 

Nesta etapa,  a aplicação  quanto o banco deverão estar funcionando em containers individuais.

Deverá ser utilizado um orquestrador (Docker Compose) para gerenciar comunicação entre os containers além do uso de credenciais, networks, volumes, entre outras configurações necessárias para a correta execução da aplicação.

## Gestão de dependencias e pacotes python

Configurar o gerenciador de dependencias e pacotes python, o poetry, para gerar um pacote pip da solução. Publicar a biblioteca

https://python-poetry.org

## Documentação automatizada

Gerar a documentação da biblioteca de forma automatizada com o sphinx para criar documentação https://www.sphinx-doc.org



##  Integração Contínua (CI)

Para a realização desta etapa, a aplicação já deverá ter seu ambiente completamente containerizado.

Deverá ser utilizada uma ferramenta de Integração Contínua para garantir o build, os testes e o deploy para o https://pypi.org .

Esta etapa do trabalho poderá ser realizada utilizado os ambientes de CI do GitLab-CI ou Github Actions.

Requisitos da configuração da Integração Contínua (Gitlab ou Github) incluem:

Build (Poetry)
Test - unitários
Lint - 
Documentação (sphinx)


## Avaliação

A avaliação do trabalho será feita à partir da correta implementação de cada etapa. A avaliação será feita de maneira **quantitativa** (se foi realizado a implementação + documentação), e **qualitativa** (como foi implementado, entendimento dos conceitos na prática, complexidade da solução). Para isso, faça os **commits atômicos, bem documentados, completos** a fim de facilitar o entendimento e avaliação do seu trabalho. Lembrando o trabalho é individual. A entrega vai ser o link do repositorio na issue e também uma apresentação de 5 min em sala de aula.

**Observações**: 
1. A data final de entrega do trabalho é o dia 28/06/2023;
2. O trabalho deve ser desenvolvido em um **repositório PESSOAL e PRIVADO** que deverá ser tornado público somente após a data de entrega do trabalho (no dia 28/06/2023);
3. Cada etapa do trabalho deverá ser entregue em commits progressivos (pendendo ser mais de um commit por etapa);
4. Os **commits devem estar espaçados em dias ao longo do desenvolvimento do trabalho**. Commits feitos todos juntos na data de entrega não serão descontados da nota final.

| Item | Peso |
|---|---|
| 1. Containerização do Banco                      | 1.0 |
| 2. Containerização da biblioteca + Banco          | 1.5 |
| 3. Publicação da biblioteca  | 1.5 |
| 4. Documentação automatiza | 1.5 |
| 5. Integração Contínua (Build, Test, Lint, documentacao)       | 3.0 |
| 6. Deploy Contínuo                               | 1.5 |


##  Exemplo de Trabalhos Anteriores

Alguns trabalhos de trabalhos anteriores:

- [2020/2](https://github.com/FGA-GCES/Trabalho-Individual-2020-2)
- [2021/1](https://github.com/FGA-GCES/Workshop-Docker-Entrega-01)
- [2021/2](https://github.com/FGA-GCES/Trabalho-Individual-2021-2)



### Requisitos de instação

```
python -m venv env
source env/bin/activate
pip install -r requirements.txt
```

### Rodando a aplicação

```
python src/main.py
```

### Testando

```
pytest --cov
```


# Projetos Disponíveis

Abaixo estão disponibilizados os projetos para o trabalho. Cada projeto deve ter, no máximo 2 alunos alocados (o trabalho pode ser feito em dupla). Para fazer esse controle, coloque seu nome e o nome do projeto escolhido na planilha (primeiro a preencher, primeiro servido). 

- Planilha - [https://docs.google.com/spreadsheets/d/1HlnADGew1it-0cRQyybiZUaQfVzRxH6HHTaD81PVV5s/edit?usp=sharing](https://docs.google.com/spreadsheets/d/1HlnADGew1it-0cRQyybiZUaQfVzRxH6HHTaD81PVV5s/edit?usp=sharing)

- BARK AI: but with the ability to use voice cloning on custom audio samples
[https://github.com/serp-ai/bark-with-voice-clone](https://github.com/serp-ai/bark-with-voice-clone)

- Escolha o projeto da lista - [https://paperswithcode.com/sota](https://paperswithcode.com/sota)
Abra o PR ;)

- Galera do Decidim - refatorar o pipeline do decidim pro gitlab - [https://gitlab.com/lappis-unb/decidimbr/decidim/-/tree/develop/.github](https://gitlab.com/lappis-unb/decidimbr/decidim/-/tree/develop/.github)