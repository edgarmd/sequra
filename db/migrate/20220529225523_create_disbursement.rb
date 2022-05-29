class CreateDisbursement < ActiveRecord::Migration[6.1]
  def change
    create_table :disbursements do |t|
      t.belongs_to :order, null: false, foreing_key: true
      t.decimal :amount, null: false

      t.timestamps
    end
  end
end
