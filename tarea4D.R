rm(list= ls())
library(rvest)
paginaAntártica <-"https://www.antartica.cl/antartica/index.jsp"
paginaANTRead<- read_html((paginaAntártica))
nodesDelHTML<-html_nodes(paginaANTRead,".txtTitulosRutaSeccionLibros")
html_attr(nodesDelHTML,"href")
extracción<-html_attr(nodesDelHTML,"href")
for (i in extracción){
  print(i)
  lecturalibro<-read_html(i)
  titulo<- html_text(html_nodes(lecturalibro,".titulo"))
  print (titulo)
}
