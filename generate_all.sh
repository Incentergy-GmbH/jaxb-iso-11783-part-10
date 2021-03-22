#!/bin/bash
cd jaxb-LinkList
./generate-xsd.sh
cd ..
cd jaxb-taskdata
./generate-xsd.sh
cd ..
cd jaxb-timelog
./generate-xsd.sh
cd ..
mvn clean install