class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.belongs_to :user, index: true, foreign_key: true, null: true

      t.timestamps null: false
    end
  end
end
