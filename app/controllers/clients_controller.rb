class ClientsController < ApplicationController
  def index
    @client = Client.search(params[:search])

    respond_to do |format|
      if @client
        format.js
      else
      end
    end
  end
end
