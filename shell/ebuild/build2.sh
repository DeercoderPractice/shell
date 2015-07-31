#!/usr/bin/env bash
# P is the package name
P=sed-3.02
# A is the archive name
A=${P}.tar.gz
export ORIGDIR=`pwd`
export WORKDIR=${RIGDIR}/work
export SRCDIR=${WORKDIR}/${P}

if [ -z "$DISTDIR" ]
then
	# if not set, then set its value for DISTDIR
	DISTDIR=/usr/src/disfiles # in bash, the blank before and after =  is fatal
fi

export DISTDIR

if [ -d ${WORKDIR} ]
then
	# remove the old directory if it exists
	rm -rf ${WORKDIR}
fi

mkdir ${WORKDIR}
cd ${WORKDIR}
tar xzf ${DISTDIR}/${A}
cd ${SRCDIR}
./configure --prefix=/usr
make
