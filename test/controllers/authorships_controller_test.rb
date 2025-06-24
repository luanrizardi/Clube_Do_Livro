require "test_helper"

class AuthorshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authorship = authorships(:one)
  end

  test "should create authorship" do
    assert_difference("Authorship.count") do
      post authorships_url, params: { authorship: { author_id: @authorship.author_id, book_id: @authorship.book_id } }
    end
    assert_redirected_to authorship_url(Authorship.last)
  end

  test "should destroy authorship" do
    assert_difference("Authorship.count", -1) do
      delete authorship_url(@authorship)
    end
    assert_redirected_to authorships_url
  end
end