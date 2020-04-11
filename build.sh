#!/bin/bash
 /home/killer/Work/protobuf-3.11.2/cmake/protoc --cpp_out=./  ./*.proto
g++ main.cpp test.pb.cc  -o main -lpthread -I/home/killer/Work/protobuf-3.11.2/src  -I./  -L/home/killer/Work/protobuf-3.11.2/cmake  -lprotobuf  -lprotobuf-lite  -g -Wall -std=c++11 
