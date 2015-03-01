class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :name
      t.string :url
      t.boolean :display
      t.string :icon
      t.string :type

      t.references :role, index: true

      t.timestamps
    end

    add_index :functions, :type
  end

end
