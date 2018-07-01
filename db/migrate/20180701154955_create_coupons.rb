class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :coupon_code
      t.string :store

      t.timestamps null: false
    end
  end
end
