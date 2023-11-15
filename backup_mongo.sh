kubectl exec -n mongodb mongodb-0 -- \
	bash -c 'gunzip -c /tmp/*.gz | mongorestore --archive -u $MONGODB_ROOT_USER  -p $MONGODB_ROOT_PASSWORD \
    && rm -rf /tmp/*.gz ' > ./backup/restore_mongo.log 2>&1

kubectl exec -n mongodb mongodb-0 -- \
	bash -c 'mongodump --gzip --archive -u $MONGODB_ROOT_USER  -p $MONGODB_ROOT_PASSWORD' > ./backup/dump_`date "+%Y-%m-%d_%H-%M-%S"`.gz ./backup/restore_mongo.log 2> ./backup/backup_mongo.log
