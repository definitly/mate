#!/usr/local/bin/bash




proverka1 () {


for b in $(ls ); do



if  ! [ -f $b ]; then

   cd  $b 


  unpack

cd ..
      else
      unpack

fi

done
}











unpack () {


for a in $(ls ); do


   deb2targz $a

name=${a%.*}

deb=$name.tar.gz
deb2=$name.tar.lzma
tar -zxvf $deb -C ~/steamos
tar -zxvf $deb2 -C ~/steamos


done




}






proverka () {

if  ! [ -f $i ]; then
echo 'NO file'
   cd  $i 
ls
echo'fffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
 proverka1

  echo 'fffhfhff'
cd ..
      else
      undeb $i
fi


}






for i in $(ls ); do


proverka


done



