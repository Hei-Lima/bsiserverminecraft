#!/bin/bash

WEBHOOK_URL="https://discord.com/api/webhooks/SEU_WEBHOOK_ID_AQUI"

FILENAME=$(basename "$1")
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

curl -H "Content-Type: application/json" -X POST -d "{
  \"username\": \"Minecraft Backup\",
  \"content\": \"📦 Backup realizado com sucesso: \`$FILENAME\`\n🕒 $TIMESTAMP\"
}" $WEBHOOK_URL
