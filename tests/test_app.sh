#!/bin/sh
set -eu

docker run --rm \
  -e STUDENT_NAME=Akbota \
  -e STUDENT_SURNAME=Zhanserikkyzy \
  -e STUDENT_GROUP=IT2-2308 \
  -e STUDENT_ID=37106 \
  zhanserikkyzy-akbota-devops --check

echo "Application test passed."
