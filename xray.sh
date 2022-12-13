#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ca38415c-3b02-4538-b993-c20603954669"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

