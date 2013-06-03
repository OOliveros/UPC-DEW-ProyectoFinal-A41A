require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { document: @user.document, email: @user.email, email_confirmation: @user.email_confirmation, lastname: @user.lastname, name: @user.name, password: @user.password, password_confirmation: @user.password_confirmation, secondlastname: @user.secondlastname, sex: @user.sex, typedocument: @user.typedocument, typeuser: @user.typeuser }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { document: @user.document, email: @user.email, email_confirmation: @user.email_confirmation, lastname: @user.lastname, name: @user.name, password: @user.password, password_confirmation: @user.password_confirmation, secondlastname: @user.secondlastname, sex: @user.sex, typedocument: @user.typedocument, typeuser: @user.typeuser }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
