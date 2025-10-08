require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "kera", carbohydrates: 1, proteins: 20, fats: 2, calories: 400)
    assert entry.save
  end

  # test "the truth" do
  #   assert true
  # end
end
