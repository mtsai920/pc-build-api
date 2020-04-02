#!/bin/bash
curl "http://localhost:4741/builds" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
