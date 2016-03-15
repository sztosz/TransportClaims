class CreateWaybills < ActiveRecord::Migration
  def change
    create_table :waybills do |t|
      t.belongs_to :transport_service, index: true, foreign_key: true, null: false
      t.string :number

      t.timestamps null: false
    end
  end
end
