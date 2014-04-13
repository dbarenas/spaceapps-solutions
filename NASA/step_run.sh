
#Descarga base de información
curl http://instagram.com/tags/skycloud/feed/recent.rss > data.xml
proc_rss.py data.xml > imglist

#se encesita reescribrir cada imagen apra integrar 
#el dato de localizacion

for i in $(cat imglist);do curl -O  $i; done
mv *.jpg corpus/.

#analizar el color de pixeles cada imagen
# 
#sacar matriz por imagen y sumarizar si es superior indice azul separar
# 
#entregar el dato de nivel de azul a base de datos
#
