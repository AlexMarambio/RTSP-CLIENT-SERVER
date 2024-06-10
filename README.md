# RTSP-CLIENT-SERVER
[Puedes ver el siguiente video como guía(Spanish Only)](https://www.youtube.com/watch?v=nHReaW27Lsk)

## Starting the server | Iniciando el servidor

Server created by: bluenviron/mediamtx
[Original repository | Repositorio original](https://github.com/bluenviron/mediamtx?tab=readme-ov-file)

You can start your server in a **linux** enviroment by using the following command.

Inicia el servidor simplemente usando el siguiente comando en tu maquina **linux**.

    $ docker run --rm -it --network=host --name yourServerName bluenviron/mediamtx:latest-ffmpeg
Note: Consider changing `yourServerName` to what ever you want, `:latest-ffmpeg` is important to use ffmpeg to upload and watch streamings.

Nota: Puedes cambiar `yourServerName` al nombre de contenedor que desees, `:latest-ffmpeg` será la herramienta para subir y observar los directos.

### **Upload streams | Subir directos**

    $ ffmpeg -re -stream_loop -1 -i yourFile.mp4 -c copy -f rtsp -rtsp_transport tcp rtsp://localhost:8554/mystream

`yourFile.mp4` can be in any video format, here you need to paste your video path in case you dont run this comand in the folder where your video is via terminal (cd yourfolder).

`yourFile.mp4` puede estar en cualquier formato de video, aquí va la ruta a tu video en caso que no te encuentes en en la carpeta donde se encuentra tu video desde la terminal (cd aTuCarpeta).

`mystream` in `rtsp://localhost:8554/mystream` can be changed by othe name you want.

`mystream` en `rtsp://localhost:8554/mystream` puede ser cambiado por el nombre que quieras.

Note: Im using tcp protocol to transfer data.

Nota: Estoy usando protocolo tcp para transferir la data.

### **Run the stream | Observa tu directo**

    $ ffplay rtsp://localhost:8554/mystream
Or in case you have `vlc` instaled

O en caso que tengas `vlc` instalado

    $ vlc rtsp://localhost:8554/mystream
This are the commands to watch the stream in your machine via terminal.

Con estos comando abres los videos en tu computadora mediante el terminal.

## Docker client
Client i based on | Me base en el cliente de: strattonlead/docker-ffplay
[Original Dockerfile](https://github.com/strattonlead/docker-ffplay)

On the **same folder** where you have the dockerfile use:

Usar en la **misma carpeta** donde tengas el dockerfile:

    $ docker build -t ffplay-client .
    $ docker run -it --rm --network container:yourServerName ffplay-client
The name of your client can be changed in `ffplay-client`.

El nombre del cliente se lo puedes cambiar en `ffplay-client`.



