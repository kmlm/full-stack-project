API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/books"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "book": {
      "title": "'"${TITLE}"'",
      "author": "'"${AUTHOR}"'",
      "isbn":"'"${ISBN}"'",
      "price": "'"${PRICE}"'"
    }
  }'


# do you need a user_id field?
# DO NOT need user ID because controller will use current_user by the token that you enter
