require 'test_helper'

class RegisterGroupsControllerTest < ActionController::TestCase
  setup do
    @register_group = register_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:register_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create register_group" do
    assert_difference('RegisterGroup.count') do
      post :create, register_group: { estilo: @register_group.estilo, lista: @register_group.lista, member: @register_group.member, musical_group: @register_group.musical_group }
    end

    assert_redirected_to register_group_path(assigns(:register_group))
  end

  test "should show register_group" do
    get :show, id: @register_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @register_group
    assert_response :success
  end

  test "should update register_group" do
    put :update, id: @register_group, register_group: { estilo: @register_group.estilo, lista: @register_group.lista, member: @register_group.member, musical_group: @register_group.musical_group }
    assert_redirected_to register_group_path(assigns(:register_group))
  end

  test "should destroy register_group" do
    assert_difference('RegisterGroup.count', -1) do
      delete :destroy, id: @register_group
    end

    assert_redirected_to register_groups_path
  end
end
