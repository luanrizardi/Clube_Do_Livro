require "test_helper"

class ClubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @club = clubs(:one)
  end

  test "should get index" do
    get clubs_url
    assert_response :success
  end

  test "should get show" do
    get club_url(@club)
    assert_response :success
  end

  test "should get new" do
    get new_club_url
    assert_response :success
  end

  test "should create club" do
    assert_difference("Club.count") do
      post clubs_url, params: { club: { name: "Novo Clube", description: "Descrição", user_id: @club.user_id } }
    end

    assert_redirected_to club_url(Club.last)
  end

  test "should get edit" do
    get edit_club_url(@club)
    assert_response :success
  end

  test "should update club" do
    patch club_url(@club), params: { club: { name: "Atualizado", description: @club.description, user_id: @club.user_id } }
    assert_redirected_to club_url(@club)
  end

  test "should destroy club" do
    assert_difference("Club.count", -1) do
      delete club_url(@club)
    end

    assert_redirected_to clubs_url
  end
end