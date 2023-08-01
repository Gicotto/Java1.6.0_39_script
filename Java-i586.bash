#!/bin/bash
cd /tmp/
apt-get purge oracle-java8-installer
apt-get purge openjdk-*
update-alternatives --remove java /usr/lib/jvm/
rm -r /usr/share/java
chmod +x jre-6u39-linux-i586.bin
./jre-6u39-linux-i586.bin
mkdir /usr/java
mv jre1.6.0_39/ /usr/java
export JAVA_HOME=/usr/java/jre1.6.0_39/
export PATH=$PATH:$JAVA_HOME/bin
update-alternatives --install /usr/bin/java java /usr/java/jre1.6.0_39/bin/java 100
update-alternatives --install /usr/bin/javaws javaws /usr/java/jre1.6.0_39/bin/javaws 1
update-alternatives --set javaws /usr/java/jre1.6.0_39/bin/javaws
java -version