mongo admin -u $MONGO_INITDB_ROOT_USERNAME -p $MONGO_INITDB_ROOT_PASSWORD --eval "db.createUser({ user: '$MONGO_RW_USERNAME', pwd: '$MONGO_RW_PASSWORD', roles: [ { role: 'readWrite', db: '$MONGO_INITDB_DATABASE' },  { role: 'readWrite', db: 'sessions' }] })"