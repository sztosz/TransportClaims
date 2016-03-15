class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :town
      t.int :zip

      t.timestamps null: false
    end
  end
end
