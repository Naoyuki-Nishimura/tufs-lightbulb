class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:edit_user]
  
  def index
  end
  
  def edit_user
  end
  
  def about
    
  end
  
  def blog
    
  end
end
