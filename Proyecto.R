# instalar paquete rvest
#install.packages('rvest')
library(rvest)

pagina<-read_html("tarea4.html")
#el punto corresponde a la clase osea el div que contiene la información
nodesDelHTML<-html_nodes(pagina,".amarillo")
#se llama la funcion , con el fin de mostrar la información contenidad en la pagina
html_text(nodesDelHTML)
texto<-html_text(nodesDelHTML)
#ahora se limpian los datos
gsub("\n","Hola mundo#",texto)


nodestabla<-html_nodes(pagina,".verde")
contenedortabla<-html_nodes(nodestabla,"table")
tabla1<-html_table(contenedortabla)[[1]]
print (tabla1)

