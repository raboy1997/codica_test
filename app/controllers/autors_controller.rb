class AutorsController < ApplicationController
  def index
    @autors = Autor.all
  end

  def show
    @autor = Autor.find(params[:id])
  end
end
