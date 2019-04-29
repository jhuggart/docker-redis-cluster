Prove that hash tags allow for keys to be distributed to correct slots in shards, which allows us to continue using multi-key operations.

1. Assuming you're on a mac, run `export REDIS_CLUSTER_IP=0.0.0.0`
2. Run `docker-compose up`
3. Run `./multi-get-test.sh > output.log`

Check out output.log to see how the keys were distributed to slots. Also, you can see the MGET output with a sample of keys from each group.

* Credit to https://github.com/Grokzen/docker-redis-cluster for the Dockerfile and docker-compose.yml *
