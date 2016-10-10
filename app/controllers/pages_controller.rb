class PagesController < ApplicationController
  def index
  end

  def contactUS
    if params[:email] != "" && params[:comment] != "" && params[:name] != ""
      PageMailer.received(params[:email],params[:comment], params[:name]).deliver
      redirect_to root_url	notice:'sus comentarios o correo fueron enviados'
    else
      redirect_to root_url, notice:'sus comentarios o correo no es válido'
    end

  end
end
