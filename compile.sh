#!/bin/bash
mvn package -f ./../SEP-project-1-clone-runner/pom.xml
vagrant provision --provision-with runner
