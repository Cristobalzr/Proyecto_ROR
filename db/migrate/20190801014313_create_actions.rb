class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.string :help
      t.string :adopt
      t.string :shelter

      t.timestamps
    end
  end
end
