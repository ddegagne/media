# media

###### SABnzbd Install


As with any repository, this one too has to be added to your /etc/apt/sources.list. To do so, run the following command in a terminal:

`sudo add-apt-repository ppa:jcfp/ppa`

Next, tell apt to update, so it learns of the new package now available:

`sudo apt-get update`


Install the main program package. All dependencies will be automatically taken care of in this step as well:

`sudo apt-get install sabnzbdplus`

