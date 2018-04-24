#!/bin/bash
mvn package -f ./../SEP-project-1/pom.xml
vagrant provision --provision-with runner
