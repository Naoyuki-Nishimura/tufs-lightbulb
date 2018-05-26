class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :email
      t.string :name
      t.string :language

      t.timestamps null: false
    end
  end
end
