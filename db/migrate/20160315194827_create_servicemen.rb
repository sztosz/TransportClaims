class CreateServicemen < ActiveRecord::Migration
  def change
    create_table :servicemen do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.reference :service, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
