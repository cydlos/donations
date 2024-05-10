class DoadoresController < ApplicationController
  def index
    @doadores = Doador.all
  end

  def new
    @doador = Doador.new
  end

  def create
    @doador = Doador.new(doador_params)
    if @doador.save
      redirect_to doadores_path, notice: 'Doador cadastrado com sucesso.'
    else
      render :new
    end
  end

  def edit
    @doador = Doador.find(params[:id])
  end

  def update
    @doador = Doador.find(params[:id])
    if @doador.update(doador_params)
      redirect_to doadores_path, notice: 'Doador atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @doador = Doador.find(params[:id])
    @doador.destroy
    redirect_to doadores_path, notice: 'Doador removido com sucesso.'
  end

  private

  def doador_params
    params.require(:doador).permit(:nome, :telefone, :endereco, :ofertas)
  end
end
