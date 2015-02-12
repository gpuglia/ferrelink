class ClientsController < ApplicationController
  def index
    Client.search(params[:search].to_i)
  end
end
