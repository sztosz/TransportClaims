class CreateClaims < ActiveRecord::Migration
  def change # rubocop:disable Metrics/MethodLength
    create_table :claims do |t|
      t.belongs_to :operator, index: true, foreign_key: true
      t.belongs_to :client, index: true, foreign_key: true
      t.belongs_to :service, index: true, foreign_key: true
      t.belongs_to :location, index: true, foreign_key: true
      t.boolean :valid, null: false
      t.belongs_to :serviceman, index: true, foreign_key: true
      t.boolean :closed, null: false
      t.belongs_to :status, index: true, foreign_key: true
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
