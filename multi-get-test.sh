for i in {1..100}
do
  for j in {1..25}
  do
   echo "setting $i:{$j}"
   redis-cli -c -p 7000 SET $i:{$j} "hello {$i}:{$j}"
 done
done

for i in {1..16384}
do
  echo "slot $i"
  redis-cli -c -p 7000 CLUSTER GETKEYSINSLOT $i 100
done

for i in {1..25}
do
  echo "MGETTING for id $i"
  redis-cli -c -p 7000 MGET 1:{$i} 11:{$i} 23:{$i} 42:{$i} 99:{$i}
done
