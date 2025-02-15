#!/bin/bash

packname="polaris-ratelimit-failover"

mkdir -p ${packname}/bin
mkdir ${packname}/conf
go build -o polaris-ratelimit-v2-failover
cp polaris-ratelimit-v2-failover ./${packname}/bin

cp -r ../tool ./${packname}/
cp include ./${packname}/tool
tar -zcvf ${packname}.tar.gz ${packname}