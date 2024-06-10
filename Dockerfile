FROM debian
RUN apt-get update
RUN apt-get install -y bash \
    ssh \
    wget \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    hicolor-icon-theme \
    libcanberra-gtk* \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    libpulse0 \
    libv4l-0 \
    xvfb \
    fonts-symbola \
	ffmpeg \
	libgl1-mesa-dri 
	
# Definir el punto de entrada predeterminado
ENTRYPOINT ["ffplay"]

# Ejecutar ffplay con la URL RTSP proporcionada
CMD ["-loglevel", "debug", "rtsp://127.0.0.1:8554/mystream"]