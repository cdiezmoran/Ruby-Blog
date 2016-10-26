require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: "t-ass", firstName: "Tassos", lastName: "Lambrou", email: "T.ass@example.com")
    @article = Article.create(user: @user, title: "whatever", content: "aklfjalskdjflkasdlkjlkjalskjfalkjdsflkasdj")

  end

  test 'can add comments' do
    comment = Comment.create(user: @user, article: @article)

    assert_equal 1, @article.comments.size

  end

  test 'can add likes' do
    like = Like.create(user: @user, article: @article)

    assert_equal 1, @article.likes.size
  end

  test 'article attributes are present' do
    assert @article.valid?
  end


end
