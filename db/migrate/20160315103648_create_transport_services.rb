class CreateTransportServices < ActiveRecord::Migration
  def change
    create_table :transport_services do |t|
      t.string :name
      t.string :email
      t.int :phone

      t.timestamps null: false
    end
  end
end
