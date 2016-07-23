require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { area: @post.area, contact: @post.contact, description: @post.description, end_date: @post.end_date, goal: @post.goal, img: @post.img, likes_number: @post.likes_number, original_link: @post.original_link, participation_way: @post.participation_way, read_count: @post.read_count, start_date: @post.start_date, status: @post.status, title: @post.title, trans_link: @post.trans_link, translators: @post.translators } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { area: @post.area, contact: @post.contact, description: @post.description, end_date: @post.end_date, goal: @post.goal, img: @post.img, likes_number: @post.likes_number, original_link: @post.original_link, participation_way: @post.participation_way, read_count: @post.read_count, start_date: @post.start_date, status: @post.status, title: @post.title, trans_link: @post.trans_link, translators: @post.translators } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
