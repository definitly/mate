#!/bin/sh


echo "������� ������: "
read pass

echo "������� �������� ����: "
read file

echo "������� ��������� ����: "
read encoded




        openssl enc -e -aes-256-cbc -k $pass -in ./$file  -out ./$encoded