#!/bin/sh


echo "введите пароль: "
read pass

echo "введите входящий файл: "
read file

echo "введите исходящий файл: "
read encoded




        openssl enc -e -aes-256-cbc -k $pass -in ./$file  -out ./$encoded