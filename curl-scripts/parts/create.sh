curl --include --request POST "http://localhost:4741/parts/" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
      "part": {
        "name": "'"${NAME}"'",
        "part_type": "'"${TYPE}"'",
        "description": "'"${DESCRIPTION}"'",
        "cost": "'"${COST}"'",
        "build_id": "'"${BUILDID}"'"
      }
  }'
