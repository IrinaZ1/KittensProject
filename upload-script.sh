#!/bin/bash

# ./upload-script.sh [bucket_name]

Dir="static-web"
Bucket=$1

ls $Dir | xargs -I {} aws s3 cp ./$Dir/{} s3://$Bucket/{}