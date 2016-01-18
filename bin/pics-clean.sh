#!/bin/sh

. ./../cfg/picocamarchiver.conf

echo -n "Cleaning source temp directory..."
rm -rf $SOURCE_DS/* 
if [ $? -ne 0 ] ; then echo "[KO"] ; else echo "[OK]" ; fi ;

echo -n "Cleaning target temp directory..."
rm -rf $TARGET_DS/*
if [ $? -ne 0 ] ; then echo "[KO"] ; else echo "[OK]" ; fi ;

