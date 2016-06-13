#!/bin/sh

mkdir -p /tmp/aws

now=$(date +'%Y%m%d%H%M')

su -c "pg_dump production_db | gzip  > /tmp/aws/production-db-$now.gz" incubator
tar -cpzf /tmp/aws/paperclip-$now.tar.gz /var/www/incubator107/shared/public/system

su -c "aws s3 cp /tmp/aws/production-db-$now.gz s3://incubator107/" incubator
su -c "aws s3 cp /tmp/aws/paperclip-$now.tar.gz s3://incubator107/" incubator

rm -rf /tmp/aws

