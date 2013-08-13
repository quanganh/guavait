require 'test_helper'

describe ContactMessagesController do
  #require 'debugger'; debugger
  before do
    @contact_message = FactoryGirl.create(:contact_message)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_messages)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create contact_message" do
    assert_difference('ContactMessage.count') do
      post :create, contact_message: {  }
    end

    assert_redirected_to contact_message_path(assigns(:contact_message))
  end

  it "must show contact_message" do
    get :show, id: @contact_message
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @contact_message
    assert_response :success
  end

  it "must update contact_message" do
    put :update, id: @contact_message, contact_message: {  }
    assert_redirected_to contact_message_path(assigns(:contact_message))
  end

  it "must destroy contact_message" do
    assert_difference('ContactMessage.count', -1) do
      delete :destroy, id: @contact_message
    end

    assert_redirected_to contact_messages_path
  end

end
