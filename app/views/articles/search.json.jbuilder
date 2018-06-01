json.articles @articles do |article|
  json.id article.id
  json.email article.email
  json.title article.title
  json.date article.date
  json.published article.published
  json.commentsCount article.comments.count
end
