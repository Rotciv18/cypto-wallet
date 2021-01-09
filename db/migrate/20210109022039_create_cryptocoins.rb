class CreateCryptocoins < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptocoins do |t|
      t.string :description
      t.string :acronym
      t.string :image_url

      t.timestamps
    end
  end
end
