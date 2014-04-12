require 'test_helper'

class ConveniosControllerTest < ActionController::TestCase
  setup do
    @convenio = convenios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convenios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convenio" do
    assert_difference('Convenio.count') do
      post :create, convenio: { codigo: @convenio.codigo, dataFim: @convenio.dataFim, dataInicio: @convenio.dataInicio, dataPublicacao: @convenio.dataPublicacao, nome: @convenio.nome, situacao: @convenio.situacao, valor: @convenio.valor }
    end

    assert_redirected_to convenio_path(assigns(:convenio))
  end

  test "should show convenio" do
    get :show, id: @convenio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @convenio
    assert_response :success
  end

  test "should update convenio" do
    patch :update, id: @convenio, convenio: { codigo: @convenio.codigo, dataFim: @convenio.dataFim, dataInicio: @convenio.dataInicio, dataPublicacao: @convenio.dataPublicacao, nome: @convenio.nome, situacao: @convenio.situacao, valor: @convenio.valor }
    assert_redirected_to convenio_path(assigns(:convenio))
  end

  test "should destroy convenio" do
    assert_difference('Convenio.count', -1) do
      delete :destroy, id: @convenio
    end

    assert_redirected_to convenios_path
  end
end
