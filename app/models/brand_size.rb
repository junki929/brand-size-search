class BrandSize < ActiveRecord::Base
  attr_accessible :name, :name_kana, :country, :item, :size, :size_japan

  scope :select_item, -> select_items {
    return if select_items.blank?
    cond = nil
    select_items.each { |select_item| cond = cond ? cond.or(arel_table[:item].eq(select_item)) : arel_table[:item].eq(select_item) }
    where(cond)
  }

  scope :select_name, -> input_brand { 
    return if input_brand.blank?
    cond = BrandSize.arel_table[:name].matches("%#{input_brand}%").or(BrandSize.arel_table[:name_kana].matches("%#{input_brand}%"))
    where(cond)
  }

  scope :select_size, -> select_sizes {
    return if select_sizes.blank?
    cond = nil
    select_sizes.each { |select_size| cond = cond ? cond.or(arel_table[:size_japan].eq(select_size)) : arel_table[:size_japan].eq(select_size) }
    where(cond)
  }

  scope :select_size_and_name, -> select_sizes, input_brand {
    where(BrandSize.select_size(select_sizes).select_name(input_brand).where_values.reduce(:and))
  }

  scope :select_item_and_size_and_name, -> select_items, select_sizes, input_brand {
    where(BrandSize.select_item(select_items).select_size(select_sizes).select_name(input_brand).where_values.reduce(:and))
  }  
end
