class ClientsController < ApplicationController

  def new
    @client = Client.new

  end

  def create
    @client = Client.create(client_params)
    if @client.save
      session[:user_id] = @client.id
      redirect_to activities_path
    else
      # binding.pry
      render :new
    end

  end

  private
  def client_params
    params.require(:client).permit(:code, user_attributes: [:id, :name, :password])
  end
end
