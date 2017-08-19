require 'test_helper'

class DonationLocalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donation_local = donation_locals(:one)
  end

  test "should get index" do
    get donation_locals_url
    assert_response :success
  end

  test "should get new" do
    get new_donation_local_url
    assert_response :success
  end

  test "should create donation_local" do
    assert_difference('DonationLocal.count') do
      post donation_locals_url, params: { donation_local: {  } }
    end

    assert_redirected_to donation_local_url(DonationLocal.last)
  end

  test "should show donation_local" do
    get donation_local_url(@donation_local)
    assert_response :success
  end

  test "should get edit" do
    get edit_donation_local_url(@donation_local)
    assert_response :success
  end

  test "should update donation_local" do
    patch donation_local_url(@donation_local), params: { donation_local: {  } }
    assert_redirected_to donation_local_url(@donation_local)
  end

  test "should destroy donation_local" do
    assert_difference('DonationLocal.count', -1) do
      delete donation_local_url(@donation_local)
    end

    assert_redirected_to donation_locals_url
  end
end
