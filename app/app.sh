#!/bin/sh

echo "================================"
echo "DevOps Student Application"
echo "================================"
echo
echo "Name: ${STUDENT_NAME:-Akbota}"
echo "Surname: ${STUDENT_SURNAME:-Zhanserikkyzy}"
echo "Group: ${STUDENT_GROUP:-IT2-2308}"
echo "Student ID: ${STUDENT_ID:-37106}"
echo
echo "Application is running successfully!"

if [ "$1" = "--check" ]; then
    exit 0
fi

while true; do
    sleep 60
done
