class WelcomeController < ApplicationController
  def index
    @name = params[:name]
    if @name
      cookies[:name] = @name
    end
  end
end
