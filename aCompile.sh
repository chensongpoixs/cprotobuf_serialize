#!/bin/bash

PROJECT=`pwd`

PROTC_EXE=/usr/local/bin/protoc


OPTIONAL_PROTO_DIR=$PROJECT/optional
OPTIONAL_PROTO_OUT_DIR=$PROJECT/optional
REPEATED_PROTO_DIR=$PROJECT/repeated
REPEATED_PROTO_OUT_DIR=$PROJECT/repeated


function compile_proto()
{
	proto_file=$1
	proto_out_dir=$2
	
	if [ ! -d $proto_file ]; then
		echo "not find dir $proto_file";
        	return;
	fi
	
	if [ ! -d $proto_out_dir ]; then
		echo "not find dir $proto_out_dir";
        	return;
	fi
	
	echo $proto_file
	
	cd $proto_file
	
	for fileproto in $(ls *.proto);
	do
		echo "compile ${fileproto} " #copy_cc
		${PROTC_EXE} --cpp_out=${proto_out_dir} ${fileproto}
	done
}




compile_proto  $OPTIONAL_PROTO_DIR $OPTIONAL_PROTO_OUT_DIR

compile_proto  $REPEATED_PROTO_DIR $REPEATED_PROTO_OUT_DIR







