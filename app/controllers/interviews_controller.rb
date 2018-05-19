class InterviewsController < ApplicationController
  def new
    @interview= Interview.new
  end

  def create
    @interview = Interview.new(interview_params)
    
    if @interview.save
      redirect_to root_path
    end
  end

  def index
    @interviews = Interview.all
  end
  
  private
  
  def interview_params
    params.require(:interview).permit(:pdf)
  end
  
end
