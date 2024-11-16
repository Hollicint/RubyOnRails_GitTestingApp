require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Should not save a post without a title" do
    post = Post.new
    assert_not post.save, "saved a post without a title"
  end
  test "Should  save a post with a title" do
    post = Post.new(title: "Test")
    assert post.save, "saved a post with a title"
  end
end
