#!/bin/bash
#When Spark is installed by a bootstrap action on an AWS EMR cluster,
#this script can be used as an additional bootstrap action to 
#configure python on all the nodes of the cluster. 

#Make Python 2.7 the default python
echo `sudo rm /usr/bin/python`
echo `sudo ln -s /usr/bin/python2.7 /usr/bin/python`

#Install iPython and dependencies for Python 2.7
echo `sudo pip-2.7 install "ipython[all]"`
