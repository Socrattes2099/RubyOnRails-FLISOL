class ComentariosController < ApplicationController
  # Insertar comentario en BD
  def create
    @nuevo_comentario = Comentario.new params[:comentario]

    if @nuevo_comentario.save
      flash[:success] = 'Su comentario ha sido guardado'
      redirect_to @nuevo_comentario.entrada
    else
      @titulo_pagina = 'Editar comentario'
      @entrada = @nuevo_comentario.entrada
      @comentarios = @entrada.comentarios
      flash.now[:error] = 'Error al guardar comentario'
      render 'entradas/show'
    end
  end
end