class AddStatusToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :status, :integer, default:0, null:false, limit:1
  end
end
