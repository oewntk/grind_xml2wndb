#!/bin/bash

IN="$1"
if [ -z "$1" ]; then
	IN=xml/oewn.xml
fi
echo "XML:  ${IN}" 1>&2;

IN2="$2"
if [ -z "$2" ]; then
	IN2=xml2
fi
echo "XML2: ${IN2}" 1>&2;

OUTDIR="$3"
if [ -z "$3" ]; then
	OUTDIR=wndb
fi
mkdir -p "${OUTDIR}"
echo "DIR:   "${OUTDIR}"" 1>&2;

java -ea -jar oewn-grind-xml2wndb.jar "${IN}" "${IN2}" "${OUTDIR}"
