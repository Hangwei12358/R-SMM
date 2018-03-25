ulimit -c unlimited 
ulimit unlimited 

./smm-train -f 0 -i 0 -t 0 -l 2 -k 1000 -c 100 rsmm.train Model.model 
./smm-predict rsmm.test Model.model test.txt
rm Model.model

