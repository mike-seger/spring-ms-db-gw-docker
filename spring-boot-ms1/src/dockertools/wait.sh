#!/bin/sh

while ! nc -z eureka 8761; do
    echo "Waiting for the Eureka Server"
    sleep 3
done

java -jar spring-boot-ms1.jar
