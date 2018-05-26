# == Schema Information
#
# Table name: interviews
#
#  id               :integer          not null, primary key
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  pdf_file_name    :string
#  pdf_content_type :string
#  pdf_file_size    :integer
#  pdf_updated_at   :datetime
#

class Interview < ActiveRecord::Base
  #  has_attached_file :photo,
  #   styles: { medium: "300x300>", thumb: "100x100>" },
  #    path: "#{Rails.root}/app/assets/images/:filename"
  #  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
    
    
    has_attached_file :pdf,
      :storage => :s3,
      :s3_credentials => "#{Rails.root}/config/s3.yml",
      :path => ":attachment/:id/:style.:extension",
      :s3_host_name => 's3-ap-northeast-1.amazonaws.com'
      validates_attachment :pdf, :content_type => { :content_type => %w(application/pdf application/msword) }
   
   
    
end

