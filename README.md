# Desafio QA

Data de Entrega: 01/02 

## Desafio 01 - Planejamento de Testes

## Arquivo de Configuração:

### Instalação Python.

Iniciando o processo de documentação. Vamos começar baixando o Python neste site a seguir, Estamos utilizando nos testes a versão 3.11.1 do python. 

**OBS:** No momento da instalação é importante marca a opção de “Add python.exe to Path”

[Download Python](https://www.python.org/downloads/)

### Instalação do WebDriver.

Após a instalação do Python iremos baixar o WebDriver neste link a seguir. 

[](https://chromedriver.storage.googleapis.com/index.html?path=110.0.5481.30/)

Com o arquivo do WebDriver baixado, iremos extrai-lo e colocar na pastas de scripts do Python. A pasta de scripts do Python você pega nas variáveis de ambiente do Windows, seguindo neste caminho

**Sistema → Configuração Avançadas do Sistema → Avançado → Variáveis de Ambiente**  

Neste caminho irá copiar o caminho da variável de usuário `Path`, necessário colocar o WebDrive.exe na pasta de scripts.

### Instalação Bibliotecas.

Vamos utilizar o framework de teste Robot e as bibliotecas do Selenium. Abrindo o cmd e executaremos os seguintes códigos:

 

```powershell
pip install robotframework
pip install robotframework-seleniumlibrary
```

### Executando os Teste.

Para fazer a execução dos teste, vamos utilizar o **CMD** e entrar na pasta do projeto, já com **CMD** aberto, execute o comando a seguir:

```powershell
robot modelo.robot
```

### Retorno Teste.

Os teste foram feitos com **DOIS**, sendo um valido e um invalido.

O primeiro cenário de teste do CEP 21240-050, que é valido, sendo assim com o retorno esperado:  **Rua Plínio Barreto, Jardim América - Rio de Janeiro / RJ**

O segundo cenário de teste do CEP 21240-584, que é invalido, sendo assim com o retorno esperado:  **CEP não encontrado**

A validação feita para ambos os teste foi a comparação de retorno dos número de CEP, a string de comparação dos teste é **Rua Plínio Barreto, Jardim América - Rio de Janeiro / RJ**. Sendo assim tendo os seguintes resultados:

- Cenário 01 - **PASS**
- Cenário 02 - **FAIL**