#!/bin/bash
sudo mvn compile
sudo mvn package
sudo mvn tomcat7:redeploy
