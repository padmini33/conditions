 #!/bin/bash
 
 if [ -a /var/lib/dpkg/lock ]
  then sudo rm /var/lib/dpkg/lock
  fi
 if [ -a /var/cache/apt/archives/lock ]
  then sudo rm /var/cache/apt/archives/lock
  fi
 sudo dpkg --configure -a
 sudo apt-get update
 sudo apt-get install r-base -y

