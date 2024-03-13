extract_comments() {
    local comments=$(echo "$1" | jq -r '.value[].comment')
    echo "$comments"
}


comment_message=$(extract_comments "$json")

echo "Извлечённые комментарии: $comment_message"
