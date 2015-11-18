require 'test_helper'

class MeisControllerTest < ActionController::TestCase
  setup do
    @mei = meis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mei" do
    assert_difference('Mei.count') do
      post :create, mei: { cnpj: @mei.cnpj, cpf: @mei.cpf, descricao_atividade: @mei.descricao_atividade, email: @mei.email, nome: @mei.nome, razao_social: @mei.razao_social, rg: @mei.rg, sexo: @mei.sexo }
    end

    assert_redirected_to mei_path(assigns(:mei))
  end

  test "should show mei" do
    get :show, id: @mei
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mei
    assert_response :success
  end

  test "should update mei" do
    patch :update, id: @mei, mei: { cnpj: @mei.cnpj, cpf: @mei.cpf, descricao_atividade: @mei.descricao_atividade, email: @mei.email, nome: @mei.nome, razao_social: @mei.razao_social, rg: @mei.rg, sexo: @mei.sexo }
    assert_redirected_to mei_path(assigns(:mei))
  end

  test "should destroy mei" do
    assert_difference('Mei.count', -1) do
      delete :destroy, id: @mei
    end

    assert_redirected_to meis_path
  end
end
