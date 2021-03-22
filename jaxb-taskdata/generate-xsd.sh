#!/bin/bash
#TASKDATA
xsltproc src/main/xslt/addAnnotations.xsl src/main/resources/xsd/ISO11783_Common_V4-3.xsd > src/main/xsd/ISO11783_Common_V4-3.xsd
xsltproc src/main/xslt/addAnnotations.xsl src/main/resources/xsd/ISO11783_TaskFile_V4-3.xsd > src/main/xsd/ISO11783_TaskFile_V4-3.xsd
xsltproc src/main/xslt/addAnnotations.xsl src/main/resources/xsd/ISO11783_ExternalFile_V4-3.xsd > src/main/xsd/ISO11783_ExternalFile_V4-3.xsd

