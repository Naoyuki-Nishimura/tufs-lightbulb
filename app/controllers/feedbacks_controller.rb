class FeedbacksController < ApplicationController
    
   def create
       @feedback = Feedback.create(feedback_params)
       redirect_to @feedback.post
       
   end
   
   def destroy
       @feedback = Feedback.find(params[:id])
       post = @feedback.post
       @feedback.destroy
       redirect_to post
   end
   
   private
    def feedback_params
        params.require(:feedback).permit(:description, :rate, :post_id)
    end
    
end