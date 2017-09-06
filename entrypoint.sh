#!/usr/bin/env bash

set -e

cd /root/rpmbuild/SPECS
sed -i "s@./configure@./configure --with-blocksize=$BLOCKSIZE --with-wal-segsize=$WAL_SIZE --with-wal-blocksize=$BLOCKSIZE@g" postgresql-9.6.spec
rpmbuild -ba postgresql-9.6.spec
