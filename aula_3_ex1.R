# Instruções: 

# Baixe os arquivos R.data e salve em uma pasta específica 
# Copie o caminho desta pasta onde você salvou os arquivos e rode
# o seguinte comando:

setwd("cole aqui o caminho com // ao invés de /")

# Depois pode seguir com o script abaixo:

library(dplyr)

load(file="banco_tb.Rdata")

# Esse é um banco das pessoas que trabalham na TB , gênero idade. Escrevam o script
# abaxio para as seguintes operações:

#1. Visualizar o banco, visualizar as dimensões (número de linhas e de colunas)
# e os nomes das variáveis ;
#2. Use os comandos aprendidos na aula 3 para:

# 2a. Ordenar em ordem decrescente de idade os membros da TB
# 2b. Crie um objeto e mude os nomes de todas as variáveis
# 2c. Ordenar os 3 membros mais velhos da TB
# 2d. Faça um objeto apenas com as pessoas do sexo feminino de São Paulo
# 2e. Faça um objeto com os membros que nasceram na grande SP
# 2f. Faça um objeto agrupando o número de pessoas da TB por cidade
# 2g. Faça um novo objeto, crie uma coluna para macroregiões (ex. Grande São Paulo, Baixada Santista)
#     e ordene os membros da TB que pertencem a cada macroregião
# 2h. BONUS: Crie um novo objeto e agrupe os membros da TB por gênero E por idade.
