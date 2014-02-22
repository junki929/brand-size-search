# -*- coding: utf-8 -*-

class TopController < ApplicationController
  def search
    select_sizes = params[:sizes].presence
    select_sizes  = select_sizes ? select_sizes.upcase.split('_') : []
    input_brand = params[:b].presence || ''

    @brand_size = BrandSize.select_size_and_name(select_sizes,input_brand)
    render :json => @brand_size
  end
end
