class HomeController < ApplicationController
  def index  
  end

  def about
    @about_me = "My Name is Test"
  end

  def banks
    @foodbanks = Foodbank.all
  end

end
