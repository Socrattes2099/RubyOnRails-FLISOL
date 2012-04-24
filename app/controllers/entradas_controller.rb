class EntradasController < ApplicationController
  # Formulario de ingreso de nueva entrada
  def new
    @titulo_pagina = 'Nueva Entrada'
    @entrada = Entrada.new
  end

  # Insertar entrada en BD
  def create
    @entrada = Entrada.new params[:entrada]

    if @entrada.save
      flash[:success] = 'Entrada almacenada satisfactoriamente';
      redirect_to @entrada
    else
      @titulo_pagina = 'Nueva Entrada'
      flash.now[:error] = 'No se pudo almacenar la entrada'
      render :new
    end
  end

  # Mostrar entrada
  def show
    @titulo_pagina = 'Ver Entrada'
    @entrada = Entrada.find params[:id]
    @nuevo_comentario = Comentario.new
    @comentarios = @entrada.comentarios
  end
end