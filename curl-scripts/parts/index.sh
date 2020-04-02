#!/bin/bash
curl "http://localhost:4741/parts" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
