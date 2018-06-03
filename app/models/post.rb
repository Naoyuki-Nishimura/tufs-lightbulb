# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :integer          default(0), not null
#

class Post < ActiveRecord::Base
  belongs_to :user, inverse_of: :posts
  has_many :feedbacks
  
  
  validates :title, :content, :user_id, :stauts, presence: true 
  
  enum status: {inactive: 0, active: 1}
  
  scope :check_active, -> { where(status: 1) }
  # scopeを使わずに、view/index/で if post.active?だけでも可能
  # であるが、試しに使用
  
end
