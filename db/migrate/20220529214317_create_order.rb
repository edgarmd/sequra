class CreateOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :merchant, null: false, foreing_key: true
      t.belongs_to :shopper, null: false, foreing_key: true
      t.decimal :amount, null: false
      t.timestamp :completed_at

      t.timestamps
    end
  end
end
