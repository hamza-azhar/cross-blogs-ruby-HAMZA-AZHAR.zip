json.comments @comments do |comment|
  json.id comment.id
  json.email comment.email
  json.title comment.title
  json.content comment.content
  json.date comment.created_at
end
