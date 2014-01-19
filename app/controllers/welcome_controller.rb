class WelcomeController < ApplicationController
  def index
  end

  def topmedidas
  	@medidas = Medida.order("fecha desc").limit(10)
  end

end
