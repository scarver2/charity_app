class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
