#!/bin/bash
#Generate TaskFile
cd ./iso-taskfile/
xsltproc src/main/xslt/addAnnotations.xsl src/main/resources/xsd/ISO11783_Common_V4-3.xsd > src/main/xsd/ISO11783_Common_V4-3.xsd
xsltproc src/main/xslt/addAnnotations.xsl src/main/resources/xsd/ISO11783_ExternalFile_V4-3.xsd > src/main/xsd/ISO11783_ExternalFile_V4-3.xsd
xsltproc src/main/xslt/addAnnotations.xsl src/main/resources/xsd/ISO11783_TaskFile_V4-3.xsd > src/main/xsd/ISO11783_TaskFile_V4-3.xsd
mvn clean install
#Generate TimeLog Classes
cd ../iso-logfile/
xsltproc src/main/xslt/addAnnotations.xsl src/main/resources/xsd/ISO11783_TimeLog_V4-3.xsd > src/main/xsd/ISO11783_TimeLog_V4-3.xsd
mvn clean install
#Generate LinkedList Classes
cd ../iso-linklist/
xsltproc iso-linklist/src/main/xslt/addAnnotations.xsl iso-linklist/src/main/resources/xsd/ISO11783_LinkListFile_V4-3.xsd > iso-linklist/src/main/xsd/ISO11783_LinkListFile_V4-3.xsd
mvn clean install
cd ..