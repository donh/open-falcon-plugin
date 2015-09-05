#!/bin/bash
url="http://127.0.0.1/index.html/"
retval=$(curl --silent --head --fail --connect-timeout 10 --output /dev/null --write-out '%{http_code}' "$url" | grep '^2')
echo '[{"endpoint": "", "tags": "", "timestamp": "", "metric": "chk.access", "value": "'$retval'", "counterType": "GAUGE", "step": ""}]'