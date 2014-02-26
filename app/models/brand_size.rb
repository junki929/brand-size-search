class BrandSize < ActiveRecord::Base
  attr_accessible :name, :name_kana, :country, :item, :size, :size_japan

  scope :select_items, -> select_items {
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

  scope :select_sizes, -> select_sizes {
    return if select_sizes.blank?
    cond = nil
    select_sizes.each { |select_size| cond = cond ? cond.or(arel_table[:size_japan].eq(select_size)) : arel_table[:size_japan].eq(select_size) }
    where(cond)
  }

  scope :select_item_and_sizes, -> select_item, select_sizes {
    return if select_item.blank?
    where(BrandSize.select_items([select_item]).select_sizes(select_sizes).where_values.reduce(:and))
  }

  scope :select_items_and_sizes, -> select_tops,select_shirts,select_bottoms,select_shoes {
    tops    = select_tops.blank? ? '' : 'Tops'
    shirts  = select_shirts.blank? ? '' : 'Shirts'
    bottoms = select_bottoms.blank? ? '' : 'Bottoms'
    shoes   = select_shoes.blank? ? '' : 'Shoes'

    cond_tops = BrandSize.select_item_and_sizes(tops,select_tops).where_values.reduce(:and)
    cond_shirts = BrandSize.select_item_and_sizes(shirts,select_shirts).where_values.reduce(:and)
    cond_bottoms = BrandSize.select_item_and_sizes(bottoms,select_bottoms).where_values.reduce(:and)
    cond_shoes = BrandSize.select_item_and_sizes(shoes,select_shoes).where_values.reduce(:and)

    conditions = nil
    [cond_tops,cond_shirts,cond_bottoms,cond_shoes].each{ |cond|
      if cond.present?
        conditions = conditions.nil? ? cond : conditions.or(cond)
      end
    }

    where(conditions)
  }
end
