# == Schema Information
#
# Table name: feedbacks
#
#  id          :integer          not null, primary key
#  description :text
#  rate        :integer
#  post_id     :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Feedback < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  
  validates :description, length: {maximum:400}
  validates :description, presence: true
  
end
