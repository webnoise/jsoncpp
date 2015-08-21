#!/bin/sh
mkdir arm_jsoncpp
cp include/ arm_jsoncpp/ -r
cp src/lib_json/* arm_jsoncpp/
cd arm_jsoncpp/
arm-none-linux-gnueabi-g++ -c *.cpp -I./include -fPIC
ar cr libjsoncpp.a *.o
cd ../
