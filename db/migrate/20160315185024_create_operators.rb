class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :name
      t.integer :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
