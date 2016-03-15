class AddOperatorAndClientToUsers < ActiveRecord::Migration
  def change
    add_belongs_to :users, :operator, index: true, foreign_key: true, null: true
    add_belongs_to :users, :client, index: true, foreign_key: true, null: true
  end
end
