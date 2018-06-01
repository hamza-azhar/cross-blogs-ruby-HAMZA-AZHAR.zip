json.id @article.id
json.email @article.email
json.title @article.title
json.content @article.content
json.date @article.date
json.comments @article.comments do |comment|
  json.id comment.id
  json.email comment.email
  json.title comment.title
  json.content comment.content
end
json.published @article.published
