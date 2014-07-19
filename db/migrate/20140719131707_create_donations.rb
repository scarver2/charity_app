class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.references :charity, index: true
      t.references :user, index: true
      t.decimal :amount
      t.boolean :recurring, default: false, null: false
      t.string :frequency
      t.timestamps
    end
  end
end
