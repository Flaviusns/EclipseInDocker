FROM ubuntu:18.04

# Installing all the posible updates and oracle-java8-installer
RUN apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer libxext-dev libxrender-dev libxtst-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

# Install libgtk2.0 in another layer.
RUN apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module

# Install Eclipse Photon
RUN echo "Installing Eclipse" && \
    wget -O eclipse_IDLE.tar.gz http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/technology/epp/downloads/release/2018-09/R/eclipse-dsl-2018-09-linux-gtk-x86_64.tar.gz && \
	mkdir EclipseIDE && \
	tar -xzvf eclipse_IDLE.tar.gz -C EclipseIDE/ && \
	rm -f eclipse_IDLE.tar.gz 

# Install vnc4server
RUN echo "Installing vnc4server" && \
   apt-get install -y vnc4server 







