# -*- coding: utf-8 -*-

class TopController < ApplicationController
  def index

    @title = "BrandSizeSearch"
    @message = "あなたのサイズを選択してください。" 
    if params[:top_page].nil?
      return
    end
    
    size_select = params[:s]
    brand_input = params[:b]

    @brand_size = BrandSize.where("(name ilike ? or name_kana like ?) and (size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ? or size_japan = ?)",'%'+brand_input+'%','%'+brand_input+'%',size_select[0], size_select[1], size_select[2], size_select[3], size_select[4], size_select[5], size_select[6], size_select[7], size_select[8], size_select[9], size_select[10])

    render :json => @brand_size
  end
  def search
    search_word = URI.decode(params[:q].to_s)
    @articles = ImageSite.where(content: search_word)
  end
  def presence
    self if present?
  end
  def information
    @title = "BrandSizeSearch"  
  end
  def size
    @title = "BrandSizeSearch"
  end
end
