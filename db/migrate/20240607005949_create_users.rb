class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birth_day
      t.integer :gender
      t.integer :blood_type
      t.text :introduction

      t.timestamps
    end
  end
end
