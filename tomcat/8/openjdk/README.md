# Que hace?
Modifica la imagen por defecto de Tomcat para poder modificar 
ficheros de configuracion en el arranque en base a variables de entorno
y asi poder configurar los parametros de los datasources.

```
EXPOSE 8080
CMD ["run-tomcat.sh", "run"]
```

Para poder customizar los scripts sobrescribir fichero `init-config-files-sh` .

## TODO

[ ] Customizar ficheros en base a variables de entorno