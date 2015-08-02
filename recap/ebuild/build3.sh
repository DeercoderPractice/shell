#!/usr/bi/env bash

if [ $# -nq 2 ]
then
	echo "Please speficy two args: ebuild ancompile"
	exit 1
fi


if [ -z "$DISTDIR" ]
then
	DISTDIR=/usr/src/distfiles
fi

export DISTDIR

ebuild_unpack() {
	## make sure that we're in the right directory
	cd ${ORIGDIR}
	if [ -d ${WORKDIR} ]
	then
		rm -rf ${WORKDIR}
	fi	
	mkdir ${WORKDIR}
	cd ${WORKDIR}

	if [ !-e${DISTDIR}/${A} ]
	then
		echo "${DISTDIR}/${A} does not exist, please download it firest"
		exit 1
	fi
	
	tar xzf ${DISTDIR}/${A}
	echo "Unpack ${DISTDIR}/${A}"
}

ebuild_compile() {
	## make sure that we're in the right path
	cd ${SRCDIR}
	if [ !-d"${SRCDIR}" ]
	then
		echo "${SRCDIR} does not exist -- please unpack first."
		exit 1
	fi
	./configure --prefix=/usr
	make
}

export ORIGDIR=`pwd`
export WORKDIR=${ORIGDIR}/work

if [ -e "$1" ]
then
	source $1
else
	echo "Ebuild file $1 not found"
	exit 1
fi

export SRCDIR=${WORKDIR}/${P}
case "${2}" in
	unpack)
		ebuild_unpack
		;;
	compile)
		ebuild_compile
		;;
	all)
		ebuild_unpack
		ebuild_compile
		;;
	*)
		echo "Please specify unpack, compile or all as the second arg"
		exit 1
		;;
esac
