class AddStatusToInterview < ActiveRecord::Migration
  def change
    add_column :interviews, :status, :integer, default:0, null:false, limit:1
  end
end
