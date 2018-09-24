


## Eclipse Papyrus in Docker


This is the EclipsePhotonPapyrusDocker that contains the dockerfile wich it´s able to run
eclipse photon into a docker container.

**Actual Limitation:**

- Eclipse isn´t in full screen.
- VNC conection.
- Its not completely automated.

**How to use:**

Build the Dockerfile:

docker build -t yourimagename .

Once the image its build, run the docker image:

docker run -p 5901:5901 -t -i yourimagename

Inside your docker container, execute the following commands:

vnc4server -geometry 1920x1080
You can change the resolution as you want.

When you execute this command, the terminal will promt a petition with a **password**.
Create your **password** and once the password it´s verificated the program will say the display unique code.

When you have your unique code, copy and execute the next command:

export DISPLAY=yourdisplayuniquecode

// Example:

export DISPLAY=91d0dfa2b3b5:1

Finally change to your Eclipse folder, by default:
`EclipseIDE/eclipse` and execute `./eclipse` . 

Open your favorite vnc client and connect to `127.0.0.1:5901`.
Eclipse will be open in your vnc client window.









