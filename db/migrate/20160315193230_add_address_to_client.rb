class AddAddressToClient < ActiveRecord::Migration
  def change
    add_reference :addresses, :client, index: true, foreign_key: true, null: true
  end
end
