class HomeController < ApplicationController
  
  def index
    Resque.enqueue(DMServiceUsers)
  end

end
