curl --include --request PATCH "http://localhost:4741/builds/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
      "build": {
        "name": "'"${NAME}"'",
        "description": "'"${DESCRIPTION}"'",
        "budget": "'"${BUDGET}"'",
        "cpu": "'"${CPU}"'",
        "gpu": "'"${GPU}"'",
        "motherboard": "'"${MOBO}"'",
        "ram": "'"${RAM}"'",
        "cooler": "'"${COOLER}"'",
        "power_supply": "'"${PSU}"'",
        "storage": "'"${STORAGE}"'",
        "other": "'"${OTHER}"'"
      }
  }'
