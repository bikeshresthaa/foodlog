require "application_system_test_case"

class ArchivesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit archives_url
  #
  #   assert_selector "h1", text: "Archives"
  # end
  setup do
    @entry = entries(:rice)
  end

  test "visiting the archives index" do
    visit archives_index_url

    assert_text "Foodlog"
    assert_selector "h3", text: "Entries for #{@entry.day}"
    assert text: @entry.meal_type
  end
end
