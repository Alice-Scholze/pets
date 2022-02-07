class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :pets, :name
  end
end
