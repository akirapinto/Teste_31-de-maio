## Tutorial 17
## Akira Pinto Medeiros
## 31 de maio de 2019

##  Trabalhando com Git
## Existem milhões de repositórios online, com o código de outras pessoas
## Podemos copiar qualquer repositório e gerar uma cópia exata em nossa própria conta.
## Isso se chama um “fork” em git.
## O git nos permitem baixar um repositório que existe em nossa conta online para o nosso computador local.
## Isso se chama um “clone” em git. 
## Vá para sua própria conta no github, abre o repositório que já ‘forcamos’ e clicar em “Clone or download” e copiar o link que aparece.
## Depois, abre RStudio e vamos ‘clonar’ este repositório: File -> New Project -> Version Control -> Git e escolha o nome e a pasta onde o repositório será baixado no seu computador.


## O que vai acontecer se mandamos o nosso script ou arquivo de R Markdown para uma colega? Vai funciona? Será reprodutível? Freqüentemente não. Mesmo que eles tem exatamente os mesmos arquivos e usa a mesma versão de R e RStudio, não podemos garantir que eles terão acesso às mesmas funções que usamos para fazer nosso script. Lembre-se que tivemos que instalar cada um dos nossos pacotes (install.packages()) - se o receptor não tiver feito o mesmo ou tiver uma versão diferente de um pacote, nosso código vai quebrar.

## Para resolver isso, podemos usar o pacote checkpoint para garantir reprodutibilidade de pacotes. Num site online, o checkpoint salva cada dia todos os pacotes disponível em R (de CRAN). Nós só precisamos escolher uma data para o nosso código para que ele use o conjunto consistente de pacotes salvos nessa data sempre que o código seja executado. Como aproveitamos? Apenas coloque o seguinte código (com sua data preferida) no início do seu código:

install.packages("checkpoint")
library(checkpoint)
checkpoint("2018-04-19")