class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.address :address
      t.integer :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
