curl --include --request POST "http://localhost:4741/builds/" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
      "build": {
        "name": "'"${NAME}"'",
        "description": "'"${DESCRIPTION}"'",
        "budget": "'"${BUDGET}"'",
        "user_id": "'"${USER_ID}"'"
      }
  }'
