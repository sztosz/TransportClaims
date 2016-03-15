class AddOperatorAndClientToUsers < ActiveRecord::Migration
  def change
    add_belongs_to :users, :operator, index: true, null: true
    add_belongs_to :users, :operator, index: true, null: true
  end
end
