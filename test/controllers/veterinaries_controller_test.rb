require "test_helper"

class VeterinariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @veterinary = veterinaries(:one)
  end

  test "should get index" do
    get veterinaries_url
    assert_response :success
  end

  test "should get new" do
    get new_veterinary_url
    assert_response :success
  end

  test "should create veterinary" do
    assert_difference("Veterinary.count") do
      post veterinaries_url, params: { veterinary: { first_name: @veterinary.first_name, last_name: @veterinary.last_name } }
    end

    assert_redirected_to veterinary_url(Veterinary.last)
  end

  test "should show veterinary" do
    get veterinary_url(@veterinary)
    assert_response :success
  end

  test "should get edit" do
    get edit_veterinary_url(@veterinary)
    assert_response :success
  end

  test "should update veterinary" do
    patch veterinary_url(@veterinary), params: { veterinary: { first_name: @veterinary.first_name, last_name: @veterinary.last_name } }
    assert_redirected_to veterinary_url(@veterinary)
  end

  test "should destroy veterinary" do
    assert_difference("Veterinary.count", -1) do
      delete veterinary_url(@veterinary)
    end

    assert_redirected_to veterinaries_url
  end
end
