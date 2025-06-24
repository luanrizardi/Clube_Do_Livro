require "application_system_test_case"

class AuthorshipsTest < ApplicationSystemTestCase
  setup do
    @authorship = authorships(:one)
  end

  test "visiting the index" do
    visit authorships_url
    assert_selector "h1", text: "Authorships"
  end

  test "should create authorship" do
    visit authorships_url
    click_on "New authorship"

    fill_in "Author", with: @authorship.author_id
    fill_in "Book", with: @authorship.book_id
    click_on "Create Authorship"

    assert_text "Authorship was successfully created"
    click_on "Back"
  end

  test "should update Authorship" do
    visit authorship_url(@authorship)
    click_on "Edit this authorship", match: :first

    fill_in "Author", with: @authorship.author_id
    fill_in "Book", with: @authorship.book_id
    click_on "Update Authorship"

    assert_text "Authorship was successfully updated"
    click_on "Back"
  end

  test "should destroy Authorship" do
    visit authorship_url(@authorship)
    click_on "Destroy this authorship", match: :first

    assert_text "Authorship was successfully destroyed"
  end
end
