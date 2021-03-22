#!/bin/bash
#LinkList
xsltproc src/main/xslt/addAnnotations.xsl src/main/resources/xsd/ISO11783_LinkListFile_V4-3.xsd > src/main/xsd/ISO11783_LinkListFile_V4-3.xsd
