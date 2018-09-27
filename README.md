


## Eclipse in Docker


This is the EclipsePhotonPapyrusDocker that contains the dockerfile wich it´s able to run
eclipse photon into a docker container. Now we connect to eclipse with x11 sockets

**How to use:**

Download the zip file.

Build the Dockerfile:

`docker build -t yourimagename .`  Inside the folder with the Dockerfile. 

Once the image its build, run the docker image:

`docker run -d  -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix yourimagename` 

Eclipse will be open in your x11 client window.


This docker was tested in macOS Mojave.

To use it in macOS, follow the next instrucctions [here](https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/) .
Xquartz works fine with the current version 2.7.11 . Thanks to Fredrik  for the blog.


**Importan Details**

- Eclipse use 1024m of memory, by default is 256m, I changed to 1024m by copy the init file into the eclipse directory. If you want to make more changes change the init file and built the image again.










