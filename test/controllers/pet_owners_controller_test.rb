require "test_helper"

class PetOwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_owner = pet_owners(:one)
  end

  test "should get index" do
    get pet_owners_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_owner_url
    assert_response :success
  end

  test "should create pet_owner" do
    assert_difference("PetOwner.count") do
      post pet_owners_url, params: { pet_owner: { cell_number: @pet_owner.cell_number, email: @pet_owner.email, first_name: @pet_owner.first_name, last_name: @pet_owner.last_name } }
    end

    assert_redirected_to pet_owner_url(PetOwner.last)
  end

  test "should show pet_owner" do
    get pet_owner_url(@pet_owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_owner_url(@pet_owner)
    assert_response :success
  end

  test "should update pet_owner" do
    patch pet_owner_url(@pet_owner), params: { pet_owner: { cell_number: @pet_owner.cell_number, email: @pet_owner.email, first_name: @pet_owner.first_name, last_name: @pet_owner.last_name } }
    assert_redirected_to pet_owner_url(@pet_owner)
  end

  test "should destroy pet_owner" do
    assert_difference("PetOwner.count", -1) do
      delete pet_owner_url(@pet_owner)
    end

    assert_redirected_to pet_owners_url
  end
end
