require 'test_helper'

class ConvenentesControllerTest < ActionController::TestCase
  setup do
    @convenente = convenentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convenentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convenente" do
    assert_difference('Convenente.count') do
      post :create, convenente: { codigo: @convenente.codigo, nome: @convenente.nome, references: @convenente.references }
    end

    assert_redirected_to convenente_path(assigns(:convenente))
  end

  test "should show convenente" do
    get :show, id: @convenente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @convenente
    assert_response :success
  end

  test "should update convenente" do
    patch :update, id: @convenente, convenente: { codigo: @convenente.codigo, nome: @convenente.nome, references: @convenente.references }
    assert_redirected_to convenente_path(assigns(:convenente))
  end

  test "should destroy convenente" do
    assert_difference('Convenente.count', -1) do
      delete :destroy, id: @convenente
    end

    assert_redirected_to convenentes_path
  end
end
