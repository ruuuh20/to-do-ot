class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new

  end

  def create
    @client = Client.new(client_params)
    # @client = Client.new
    # @client.build_user
    # raise params.inspect

    #from google, this "solves" the problem but is not a good solution!
    @client.user.meta = @client
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
    params.require(:client).permit(:code, user_attributes: [:name, :password])
  end
end
