#!/bin/bash
mvn package -f ./../hello-spring_clone_runner/pom.xml
vagrant provision --provision-with runner
