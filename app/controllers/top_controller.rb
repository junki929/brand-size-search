# -*- coding: utf-8 -*-

class TopController < ApplicationController
  def search
    select_tops = params[:tops].presence
    select_tops  = select_tops ? select_tops.upcase.split('_') : []
    data_tops = select_tops.blank? ? [] : BrandSize.select_item_and_sizes('Tops',select_tops)


    select_shirts = params[:shirts].presence
    select_shirts  = select_shirts ? select_shirts.upcase.split('_') : []
    data_shirts = select_shirts.blank? ? [] : BrandSize.select_item_and_sizes('Shirts',select_shirts)

    select_bottoms = params[:bottoms].presence
    select_bottoms  = select_bottoms ? select_bottoms.upcase.split('_') : []
    data_bottoms = select_bottoms.blank? ? [] : BrandSize.select_item_and_sizes('Bottoms',select_bottoms)


    select_shoes = params[:shoes].presence
    select_shoes  = select_shoes ? select_shoes.upcase.split('_') : []
    data_shoes = select_shoes.blank? ? [] : BrandSize.select_item_and_sizes('Shoes',select_shoes)

    #input_brand = params[:b].presence || ''

    @brand_size = data_tops + data_shirts + data_bottoms + data_shoes
    render :json => @brand_size
  end
end
