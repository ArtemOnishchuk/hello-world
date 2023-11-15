kubectl exec -n mongodb mongodb-0 -- \
	bash -c 'gunzip -c /tmp/*.gz | mongorestore --archive -u $MONGODB_ROOT_USER  -p $MONGODB_ROOT_PASSWORD \
    && rm -rf /tmp/*.gz ' > ./backup/restore_mongo.log 2>&1
