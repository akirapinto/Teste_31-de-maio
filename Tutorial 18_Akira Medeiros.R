## Tutorial 18
## 31 de maio de 2019

## Depois de aprender como usar Rmarkdown, o próximo passo para cientistas de dados com interesses acadêmicos é aprender o Latex para ganhar mais controle sobre os nossos documentos.
## Latex é uma linguagem de preparação de documentos que podemos acessar direitamente usando, por exemplo, o aplicativo ‘tekmaker’ ou ‘texworks’. Assim, podemos produzir documentos ‘státicos’ sem código ou análise de R e apenas escrevendo a gramática de Latex.  
## Contudo, o jeito mas sofisticado e flexível para usar Latex é dentro de Rstudio, juntando o conteúdo do seu documento com o análise e outputs do R, exatamento usando o mesmo modelo de Rmarkdown.

## Criando um documento de Knitr
## Knitr é Latex + R. Um documento de knitr, .Rnw, é o equivalente que o documento de Rmarkdown, .Rmd. Primeiro, abrimos um novo documento onde podemos digitar a gramática de Latex com File -> New File -> R Sweave (Sweave é basicamento o nome velho de Knitr). O documento abre com três linhas de texto; os mínimos necesários para um documento de Latex:

## \documentclass{article} - O tipo de documento que queremos gerar, o mais comum é um article. Vamos ver embaixo como a gerar apresentações.

## \begin{document} - um indicador da começa do conteúdo a ser inserido no documento final. Antes disso podemos inserir pacotes e parâmetros. Depois, digite direitamento o seu texto na gramática de latex.

## \end{document} - um indicador do fim do documento. Texto depois será ignorado.

## Inserir um texto simples “Relatório sobre Latex e Knitr” entre o ‘begin{document}’ e ‘end{document}’. Para gerar o documento final o equivalente a ‘knit’ é ‘Compile PDF’. Deve abrir um PDF, e será salvo na mesma pasta do seu script.

## Texto simples em Latex 
## Latex é mais preciso e controlado do que Rmarkdown. 
## Mas a formatação precisa um pouco mais de esforço.
## O padrão para formatar é \comando{texto}, onde o ‘texto’ é imprimido no documento, e ‘comando’ significa o tipo de formatação desejado.

## \textbf{text} - Bold
## \textit{text} - italic
## \underline{text} - underline

## Para gerar listas não ordenadas:
## \begin{itemize} 
## \item Texto 1 
## \item Texto 2 
## \end{itemize}

## Para gerar listas ordenadas:
## \begin{enumerate} 
## \item Texto 1 
## \item Texto 2 
## \end{enumerate}

## Títulos e Secões numerados:
## \section{Titulo 1}
## \subsection{Subtitulo 1}
## \subsubsection{Subsubtitulo 1}

## Títulos e Secões não numerados:
## \section{Titulo 1}
## \subsection{Subtitulo 1}
## \subsubsection*{Subsubtitulo 1}

## Títulos e Secões não numerados:
## \section*{Titulo 1}
## \subsection*{Subtitulo 1}
## \subsubsection*{Subsubtitulo 1}

## Quando se coloca o * tira-se a numeração da lista

## Equações em Latex
## O mesmo formato de Rmarkdown. Na verdade, o Rmarkdown usa o formato de Latex.
## $$\alpha^2 + \beta^2 = \chi^2$$
## $$\frac{\sqrt{1}}{2} * \frac{a}{2b} = \frac{a}{4b}$$
## $$\sum_0^{10} x = ...$$ 

## Acentos em Latex
## Para inserir acentos, temos duas opções. Primeira opção, abrir um pacote antes de begin{document} e digitar como normal:
## \usepackage[utf8]{inputenc} 
## Segunda opção é usar a formatação especifíca para cada acento, ex:
## \’{e}
## \`{a}
## \~{o}
## \^{a}
## \c{c}


# Página inicial do documento
# O nosso típo de documento ‘article’ nos permitem especificar um título e vários outros característicos antes de \begin{document}.
# Se compilar o seu PDF agora, não veja nenhuma diferença. Por que? Porque não tem nada diferente entre begin{document} e end{document}. 
# Para estes característicos aparecem em nosso documento, precisamos inserir o seguinte depois de \begin{document}:

