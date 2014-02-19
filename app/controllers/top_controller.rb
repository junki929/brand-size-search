# -*- coding: utf-8 -*-

class TopController < ApplicationController
  def index
    @title = "BrandSizeSearch"
    @message = "あなたのサイズを選択してください。" 
    if params[:top_page].nil?
      return
    end
    @japan_size_select = params[:top_page][:japan_size]
    @brand_input = params[:q]
    case @japan_size_select
    when "XXS" then
      @select_size_XXS = true
    when "XS" then
      @select_size_XS = true
    when "S" then
      @select_size_S = true
    when "M" then
      @select_size_M = true
    when "L" then
      @select_size_L = true
    when "XL" then
      @select_size_XL = true
    when "XXL" then
      @select_size_XXL = true
    when "XXXL" then
      @select_size_XXXL = true
    when "4XL" then
      @select_size_4XL = true
    when "5XL" then
      @select_size_5XL = true
    else
      @select_size_XS = true
    end
    @brand_size = BrandSize.where("(name like ? or name_kana like ?) and size_japan = ?",'%'+@brand_input+'%','%'+@brand_input+'%',@japan_size_select)
    @display_flg = false
    if @brand_size.present?
      @display_flg = true
    else
      @display_flg = false
    end
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
