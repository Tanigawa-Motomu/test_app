class User < ActiveRecord::Migration[7.1]
  def change
    create_table :users, if_not_exists: true do |t|
      t.string :name
      t.date :birth_day
      t.integer :gender
      t.integer :blood_type
    end
  end
end
