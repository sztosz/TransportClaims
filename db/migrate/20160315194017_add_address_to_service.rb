class AddAddressToService < ActiveRecord::Migration
  def change
    add_reference :addresses, :service, index: true, foreign_key: true, null: true
  end
end
