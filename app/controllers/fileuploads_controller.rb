class FileuploadsController < ApplicationController
  def index
  end

  def new
  end

  def create
    
    # need to fix the security /file upload vulnerability/
    
    uploaded_file = fileupload_param[:file]
    output_path = Rails.root.join('public/pdf/', uploaded_file.original_filename)
  
    File.open(output_path, 'w+b') do |fp|
      fp.write  uploaded_file.read
    end
  
    redirect_to action: 'index'
  
  end
	
	private
	def fileupload_param
	  params.require(:fileupload).permit(:file)
	end

  
end
