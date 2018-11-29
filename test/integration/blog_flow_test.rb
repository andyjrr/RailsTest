require 'test_helper'

class BlogFlowTest < ActionDispatch::IntegrationTest

  test "can create an article" do
    post "/articles",
      params: { article: { title: "can create", text: "article successfully." } }
      assert_response :success
  end

  # test "can create an article" do
  #   post "/articles",
  #     params: { article: { title: "can create", body: "article successfully." } }
  #     assert_response :success
  # end

  test "can not get an article" do
    # assert_raises(RecordNotFound)
    # assert_raises(ActiveRecord::RecordNotFound) do
      get "/articles/22",
        params: { }
        assert_response :missing
    # end
    # end
  end
end
