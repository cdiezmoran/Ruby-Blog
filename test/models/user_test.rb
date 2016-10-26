require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: "t-ass", firstName: "Tassos", lastName: "Lambrou", email: "T.ass@example.com")
    @article = Article.create(user: @user, title: "hola", content: "adios");
  end

  test 'can add articles' do
    assert_equal 1, @user.articles.size
  end

  test 'can add comments' do
    comment = Comment.create(user: @user, article: @article);

    assert_equal 1, @user.comments.size
  end

  test 'can add likes' do
    like = Like.create(user: @user, article: @article)

    assert_equal 1, @user.likes.size
  end

  test 'is user valid' do
    assert @user.valid?
  end

  test 'is user email invalid' do
    invalidUserEmail = User.create(username: "cdiez", firstName: "Carlos", lastName: "Diez", email: "asdjkashd")

    assert_not invalidUserEmail.valid?
  end

  test 'are user fields absent' do
    invalidUserFields = User.create(firstName: "Carlos", lastName: "Diez", email: "cdiezm@example.com")

    assert_not invalidUserFields.valid?
  end

  test 'is username duplicate' do
    duplicateUserEmails = User.create(email: "cdiezm@example.com", username: "t-ass", firstName: "Tassos", lastName: "Lambrou")

    assert_not duplicateUserEmails.valid?
  end

end
