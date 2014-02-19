class CreateBrandSizes < ActiveRecord::Migration
  def change
    create_table :brand_sizes do |t|
      t.string :name
      t.string :name_kana
      t.string :country
      t.string :item
      t.string :size
      t.string :size_japan
      t.timestamps
    end
  end
end
