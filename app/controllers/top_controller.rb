# -*- coding: utf-8 -*-

class TopController < ApplicationController
  def search
    size_select = params[:sizes].presence
    size_select = size_select ? size_select.upcase.split('_') : []
    brand_input = params[:b].presence || ''

    @brand_size = BrandSize.where("(name ilike ? or name_kana like ?) and (size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ?)",'%'+brand_input+'%','%'+brand_input+'%',size_select[0], size_select[1], size_select[2], size_select[3], size_select[4], size_select[5], size_select[6], size_select[7], size_select[8], size_select[9], size_select[10])

    render :json => @brand_size
  end
end
