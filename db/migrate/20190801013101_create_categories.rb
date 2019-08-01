class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :natural
      t.string :fundation
      t.string :veterinary

      t.timestamps
    end
  end
end
