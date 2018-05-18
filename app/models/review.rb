# == Schema Information
#
# Table name: reviews
#
#  id               :integer          not null, primary key
#  upload_file_name :string
#  upload_file      :binary
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Review < ActiveRecord::Base
end
