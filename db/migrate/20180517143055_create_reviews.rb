class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :upload_file_name
      t.binary :upload_file

      t.timestamps null: false
    end
  end
end
