class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :name
      t.string :location
      t.string :photo
      t.boolean :adopted
      t.boolean :injured
      t.string :description

      t.timestamps
    end
  end
end
