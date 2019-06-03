require 'test_helper'

class UbicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ubication = ubications(:one)
  end

  test "should get index" do
    get ubications_url, as: :json
    assert_response :success
  end

  test "should create ubication" do
    assert_difference('Ubication.count') do
      post ubications_url, params: { ubication: { latitude: @ubication.latitude, longitude: @ubication.longitude, sent_at: @ubication.sent_at, vehicle_identifier: @ubication.vehicle_identifier } }, as: :json
    end

    assert_response 201
  end

  test "should show ubication" do
    get ubication_url(@ubication), as: :json
    assert_response :success
  end

  test "should update ubication" do
    patch ubication_url(@ubication), params: { ubication: { latitude: @ubication.latitude, longitude: @ubication.longitude, sent_at: @ubication.sent_at, vehicle_identifier: @ubication.vehicle_identifier } }, as: :json
    assert_response 200
  end

  test "should destroy ubication" do
    assert_difference('Ubication.count', -1) do
      delete ubication_url(@ubication), as: :json
    end

    assert_response 204
  end
end
