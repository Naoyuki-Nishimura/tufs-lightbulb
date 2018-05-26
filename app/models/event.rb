# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  email      :string
#  name       :string
#  language   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  grade      :string
#

class Event < ActiveRecord::Base
    validates :name, presence: true
    validates :language, presence: true
    validates :grade, presence: true
end
