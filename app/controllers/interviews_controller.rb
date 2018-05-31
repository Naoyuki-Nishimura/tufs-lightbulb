class InterviewsController < ApplicationController
  
#  before_action :authenticate_user!
  
  def new
    @interview= Interview.new
  end

  def create
    @interview = Interview.new(interview_params)
    
    if @interview.save
      redirect_to @interview, notice: 'Friend was successfully created.'
    end
  end

  def index
    @interviews = Interview.all
  end
  
  private
  
  def interview_params
    params.require(:interview).permit(:pdf, :name)
  end
  
end
