require 'test_helper'

class ImportOneAssesControllerTest < ActionController::TestCase
  setup do
    @import_one_ass = import_one_asses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:import_one_asses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create import_one_ass" do
    assert_difference('ImportOneAss.count') do
      post :create, import_one_ass: { import_xml: @import_one_ass.import_xml, offers_xml: @import_one_ass.offers_xml }
    end

    assert_redirected_to import_one_ass_path(assigns(:import_one_ass))
  end

  test "should show import_one_ass" do
    get :show, id: @import_one_ass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @import_one_ass
    assert_response :success
  end

  test "should update import_one_ass" do
    patch :update, id: @import_one_ass, import_one_ass: { import_xml: @import_one_ass.import_xml, offers_xml: @import_one_ass.offers_xml }
    assert_redirected_to import_one_ass_path(assigns(:import_one_ass))
  end

  test "should destroy import_one_ass" do
    assert_difference('ImportOneAss.count', -1) do
      delete :destroy, id: @import_one_ass
    end

    assert_redirected_to import_one_asses_path
  end
end
