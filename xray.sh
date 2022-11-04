#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d40db5b3-722e-4a95-b687-6ce3c1874dd3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

