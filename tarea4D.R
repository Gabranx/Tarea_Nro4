rm(list= ls())
library(rvest)
#################################################################################
#####################TRABAJANDO CON Cooperativa#########################################
#################################################################################

#En este primer paso , se intentará extraer información respecto a una noticia.
#Gestamos una variable con el fin de guardar la página que se utilizará.

cooperativa<-"https://www.cooperativa.cl/noticias/pais/presidente-pinera/viajes-al-exterior/pinera-arribo-a-israel-para-iniciar-su-gira-por-medio-oriente/2019-06-24/174049.html"

#Luego se crea otra variable que almacene la lectura de la página seleccionada

coopread <- read_html((cooperativa))

#Posteriormente, se extrae la información que esté en el div que necesitamos

nodesDelHTMLCop <- html_nodes(coopread,".cuerpo-ad")
html_text(nodesDelHTMLCop)
textoCop <- html_text(nodesDelHTMLCop)

#Luego limpiamos el texto que se almacenó en la variable textocop

gsub("\n"," ",textoCop)

#Por último almacenamos el texto que se ha limpiado

textoLimpio<-gsub("\n"," ",textoCop)


#################################################################################
#####################TRABAJANDO CON EMOL#########################################
#################################################################################

#En este primer paso , se intentará extraer información respecto a una noticia.
#Gestamos una variable con el fin de guardar la página que se utilizará.

paginaemol <-"https://www.emol.com/noticias/Deportes/2019/06/24/952448/Chile-cedio-el-liderato-del-Grupo-al-perder-con-Uruguay-en-su-apreton-mas-duro-y-ahora-debera-jugar-con-Colombia-en-cuartos.html"

#Luego se crea otra variable que almacene la lectura de la página seleccionada

emol<- read_html((paginaemol))

#Posteriormente, se extrae la información que esté en el div que necesitamos

nodesDelHTML<-html_nodes(emol,".EmolText")

#Luego se muestra el texto extraído de la pag

html_text(nodesDelHTML)

#Por último se almacena en una variable texto

texto<-html_text(nodesDelHTML)
#######################################################################
mipagina <- "tarea4.html"
archivo <- read_html(mipagina)
tablanodes <- html_nodes(archivo,".verde")
tabla1 <-html_table(html_nodes(tablanodes,"table")[[1]])
print(tabla1)
#pasando la informacion a una data frame
tablaframe <- as.data.frame(tabla1)

#almacenando la información en CSV
write.csv(tablaframe, file="supertabla.csv")