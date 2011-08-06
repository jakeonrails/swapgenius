class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.text :description
      t.references :need
      t.references :user
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
