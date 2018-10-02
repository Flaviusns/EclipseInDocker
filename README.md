


## Eclipse in Docker


This is the EclipsePhotonDocker that contains the dockerfile wich it´s able to run
eclipse photon into a docker container. Now we connect to eclipse with x11 sockets

**How to use (common) with Docker Repository:**

If you don´t want to build your image locally, donwload only de docker-compose-DockerRepository.yml file, change it name to `docker-compose.yml` and execute `docker-compose up` in the same directory.
It will download a Docker Repository Image with the image already built.


**How to use (common):**

Download the zip file.

Build the Dockerfile:

`docker build -t yourimagename .`  Inside the folder with the Dockerfile. 

**How to use (macOS):**

Tested in macOS Mojave (10.14):

To use it in macOS, follow the next instrucctions [here](https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/) .
Xquartz works fine with the current version 2.7.11 . Thanks to Fredrik  for the blog.

Once the image it´s build, run the docker image:

`docker run -d  -e DISPLAY=hostname:0 -v /tmp/.X11-unix:/tmp/.X11-unix yourimagename` 

Eclipse will be open in your x11 client window.

**How to use (macOS) with docker-compose:**

Once the image it´s build, edit the docker-compose.yml file and change  `hostnameHere` with your hostname and `imageHere` with yourimagename. Save the file and execute:

`docker-compose up`

**How to use (linux):**

Tested on Ubuntu 18.04:

Once the image it´s build, get your image id and execute the following command:

`xhost +local:``docker inspect --format='{{ .Config.Hostname }}' $containerId`` `

For more information, consult [here](http://wiki.ros.org/docker/Tutorials/GUI) .

Now, you can run your eclipse docker using the following command:

`docker run -d  -e DISPLAY=:0 -v /tmp/.X11-unix:/tmp/.X11-unix yourimagename` 

**How to use (linux) with docker-compose:**

Once the image it´s build, edit the docker-compose.yml file and delete  `hostnameHere` and change  `imageHere` with yourimagename. Save the file and execute:

`docker-compose up`

**Importan Details**

- Eclipse use 1024m of memory, by default is 256m, I changed to 1024m by copy the init file into the eclipse directory. If you want to make more changes change the init file and built the image again.
- Using docker-compose will create a volume with the current directory so you can persist your projects.
   The folder is allocated in the docker following the next Path: `/EclipseIDE/eclipse/Projects`


For any issue contact with me by twitter:  [@FlaviusStan_Dev](https://twitter.com/FlaviusStan_Dev) .










