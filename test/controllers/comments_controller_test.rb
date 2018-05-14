require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should create comment" do
    assert_difference('Comment.count') do
      post comments_url, params: { comment: { body: @comment.body, user_id: @comment.user_id, lecture_id: @comment.lecture_id } }
    end

    assert_redirected_to comment_url(Comment.last)
  end

end
