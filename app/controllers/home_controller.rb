class HomeController < ApplicationController
  require "DMServiceUsers"
  
  def index
    Resque.enqueue(DMServiceUsers)
  end

end
