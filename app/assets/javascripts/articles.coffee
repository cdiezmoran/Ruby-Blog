# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@addComment = (element, content, articleId) ->
  Comment.create(content: content, article_id: articleId, user_id: 1)
