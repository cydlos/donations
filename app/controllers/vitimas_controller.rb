# app/controllers/vitimas_controller.rb
class VitimasController < ApplicationController
  def index
    @vitimas = Vitima.all
  end

  def new
    @vitima = Vitima.new
  end

  def create
    @vitima = Vitima.new(vitima_params)
    if @vitima.save
      redirect_to vitimas_path, notice: 'Vítima cadastrada com sucesso.'
    else
      render :new
    end
  end

  def edit
    @vitima = Vitima.find(params[:id])
  end

  def update
    @vitima = Vitima.find(params[:id])
    if @vitima.update(vitima_params)
      redirect_to vitimas_path, notice: 'Vítima atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @vitima = Vitima.find(params[:id])
    @vitima.destroy
    redirect_to vitimas_path, notice: 'Vítima removida com sucesso.'
  end

  private

  def vitima_params
    params.require(:vitima).permit(:nome, :telefone, :endereco, :necessidade)
  end
end
