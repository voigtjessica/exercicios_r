# Instruções: 

# Baixe os arquivos R.data e salve em uma pasta específica 
# Copie o caminho desta pasta onde você salvou os arquivos e rode
# o seguinte comando:

setwd("C:\\Users\\jvoig\\OneDrive\\Documentos\\exercicios_r")

# Depois pode seguir com o script abaixo:

library(dplyr)

load(file="banco_tb.Rdata")

# Esse é um banco das pessoas que trabalham na TB , gênero idade. Escrevam o script
# abaxio para as seguintes operações:

#1. Visualizar o banco, visualizar as dimensões (número de linhas e de colunas)
# e os nomes das variáveis ;

View(banco_tb)
dim(banco_tb)
names(banco_tb)

#2. Use os comandos aprendidos na aula 3 para:

# 2a. Ordenar em ordem decrescente de idade os membros da TB

banco_tb %>%
  arrange(desc(Idade))

# 2b. Crie um objeto e mude os nomes de todas as variáveis

banco_tb_2 <- banco_tb %>%
  rename(nome1 = Nome,
         idade1 = Idade,
         genero1 = Gênero,
         origem1 = Origem)

names(banco_tb_2)

# 2c. Ordenar os 3 membros mais velhos da TB

banco_tb %>%
  arrange(desc(Idade)) %>%
  slice(1:3)

# 2d. Faça um objeto apenas com as pessoas do sexo feminino de São Paulo

fem_sp <- banco_tb %>%
  filter(Gênero == "Fem" & Origem == "São Paulo")

fem_sp

# 2e. Faça um objeto com os membros que nasceram na grande SP

gde_sp <- banco_tb %>%
  filter(Origem == "São Paulo" | Origem == "Osasco")

gde_sp

# 2f. Faça um objeto agrupando o número de pessoas da TB por cidade

cidades <- banco_tb %>%
  group_by(Origem) %>%
  summarise(membros_tb = n())

cidades

# 2g. Faça um novo objeto, crie uma coluna para macroregiões (ex. Grande São Paulo, Baixada Santista)
#     e ordene os membros da TB que pertencem a cada macroregião

macro <- banco_tb %>%
  mutate(macro_regiao = ifelse(Origem == "São Paulo" | 
                                 Origem == "Osasco", "gde_sp",
                               ifelse(Origem == "Santos" | 
                                        Origem == "Guarujá", "baixada_santista", Origem)))
macro

# 2h. BONUS: Crie um novo objeto e agrupe os membros da TB por gênero E por idade.

x <- banco_tb %>%
  group_by(Gênero, Idade) %>%
  summarise(membros = n()) %>%
  arrange(desc(membros))

x
