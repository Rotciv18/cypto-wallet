class CreateCyptocoins < ActiveRecord::Migration[6.1]
  def change
    create_table :cyptocoins do |t|
      t.string :description
      t.string :acronym
      t.string :image_url

      t.timestamps
    end
  end
end
