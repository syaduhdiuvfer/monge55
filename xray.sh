#!/bin/sh
if [ ! -f UUID ]; then
  UUID="cf5789dc-856a-47ce-a94d-5fe03673abcc"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

