class AddGradeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :grade, :string
  end
end
