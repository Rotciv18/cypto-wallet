class AddMiningTypeToCryptocoins < ActiveRecord::Migration[6.1]
  def change
    add_reference :cryptocoins, :mining_type, null: true, foreign_key: true
  end
end
