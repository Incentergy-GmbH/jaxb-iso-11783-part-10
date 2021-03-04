#!/bin/bash
xsltproc iso-taskfile/src/main/xslt/addAnnotations.xsl iso-taskfile/src/main/resources/xsd/ISO11783_Common_V4-3.xsd > iso-taskfile/src/main/xsd/ISO11783_Common_V4-3.xsd
xsltproc iso-taskfile/src/main/xslt/addAnnotations.xsl iso-taskfile/src/main/resources/xsd/ISO11783_ExternalFile_V4-3.xsd > iso-taskfile/src/main/xsd/ISO11783_ExternalFile_V4-3.xsd
xsltproc iso-taskfile/src/main/xslt/addAnnotations.xsl iso-taskfile/src/main/resources/xsd/ISO11783_TaskFile_V4-3.xsd > iso-taskfile/src/main/xsd/ISO11783_TaskFile_V4-3.xsd
xsltproc iso-logfile/src/main/xslt/addAnnotations.xsl iso-logfile/src/main/resources/xsd/ISO11783_TimeLog_V4-3.xsd > iso-logfile/src/main/xsd/ISO11783_TimeLog_V4-3.xsd
xsltproc iso-linklist/src/main/xslt/addAnnotations.xsl iso-linklist/src/main/resources/xsd/ISO11783_LinkListFile_V4-3.xsd > iso-linklist/src/main/xsd/ISO11783_LinkListFile_V4-3.xsd
