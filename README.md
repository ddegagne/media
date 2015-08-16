# media

## SABnzbd Install

As with any repository, this one too has to be added to your /etc/apt/sources.list. To do so, run the following command in a terminal:

`sudo add-apt-repository ppa:jcfp/ppa`

Next, tell apt to update, so it learns of the new package now available:

`sudo apt-get update`

Install the main program package. All dependencies will be automatically taken care of in this step as well:

`sudo apt-get install sabnzbdplus`

Finally, you can install the optional "Mobile" interface template:

`sudo apt-get install sabnzbdplus-theme-mobile`

And that's it. To start the program, just execute:

`sabnzbdplus`

If you want the program to be started as a service (i.e., in the background on system boot), you will need to edit (as root) the file /etc/default/sabnzbdplus and set the "USER=" to the appropriate setting and the "HOST=" to 0.0.0.0 .

Example conf file below

`sudo nano /etc/default/sabnzbdplus`
```
# This file is sourced by /etc/init.d/sabnzbdplus
#
# When SABnzbd+ is started using the init script, the
# --daemon option is always used, and the program is
# started under the account of $USER, as set below.
#
# Each setting is marked either "required" or "optional";
# leaving any required setting unconfigured will cause
# the service to not start.

# [required] user or uid of account to run the program as:
USER=ddegagne

# [optional] full path to the configuration file of your choice;
#            otherwise, the default location (in $USER's home
#            directory) is used:
CONFIG=/home/ddegagne

# [optional] hostname/ip and port number to listen on:
HOST=192.168.1.108
PORT=8080

# [optional] extra command line options, if any:
EXTRAOPTS=
```

Once configured correctly, you will be able to start and stop SABnzbd with the commands /etc/init.d/sabnzbdplus start and /etc/init.d/sabnzbdplus stop. On more recent Ubuntu versions, you can use

`sudo service sabnzbdplus start`

and

`sudo service sabnzbdplus stop`

## Sonarr PVR Install

Add Sonarr's repository to your software source

`sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC`
`echo "deb http://apt.sonarr.tv/ master main" | sudo tee /etc/apt/sources.list.d/sonarr.list`

Install/Update Sonarr

`sudo apt-get update`
`sudo apt-get install nzbdrone` 

Start Sonarr

`mono --debug /opt/NzbDrone/NzbDrone.exe`

Open Browser

http://localhost:8989

In order for the program to run as a service, you will need to create a config file and save it in the /etc/init directory under nzbdrone.conf

```
author "Deric Degagne"
description "Upstart Script to run Sonarr as a service on Ubuntu/Debian based systems."

#Set username for the process. Should probably be what you use for logging in
setuid ddegagne

env DIR=/opt/NzbDrone
#This is the install directory. If you installed using a deb package or the Sonarr Repository you do not need to change this
setgid nogroup
start on runlevel [2345]
stop on runlevel [016]

respawn

exec mono --debug $DIR/NzbDrone.exe
```
