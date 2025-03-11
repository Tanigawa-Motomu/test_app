class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :status

      t.timestamps
    end
  end
end
