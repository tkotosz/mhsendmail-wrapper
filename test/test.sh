#!/bin/bash

echo "Start docker environment with mailhog and mhsendmail..."
docker-compose up -d --remove-orphans --build

echo "Check sending email with php..."
docker-compose exec mhsendmail-with-php php -r "mail('test@mailhog.local', 'Test message 3', 'Some content', 'From: App <app@mailhog.local>');"
echo "Email sent! Check http://localhost:18025 to see it"

read -n 1 -s -r -p "Press any key to continue"

echo "Stop docker environment..."
docker-compose down --remove-orphans
