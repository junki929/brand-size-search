require 'spec_helper'

describe BrandSize do

  describe 'サイズ' do
    it 'サイズが選択されなかった場合' do
      select_size = ''
      brand_data = BrandSize.select_size(select_size)
      expect = BrandSize.where("")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_size(select_size).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\""
      brand_sql.should == expect_sql
    end
    it 'サイズが1つ選択された場合' do
      select_size = ['XXS']
      brand_data = BrandSize.select_size(select_size)
      expect = BrandSize.where("\"brand_sizes\".\"size_japan\" = 'XXS'")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_size(select_size).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE \"brand_sizes\".\"size_japan\" = 'XXS'"
      brand_sql.should == expect_sql
    end
    it 'サイズが2つ選択された場合' do
      select_size = ['XXS','XS']
      brand_data = BrandSize.select_size(select_size)
      expect = BrandSize.where("(\"brand_sizes\".\"size_japan\" = 'XXS' OR \"brand_sizes\".\"size_japan\" = 'XS')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_size(select_size).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((\"brand_sizes\".\"size_japan\" = 'XXS' OR \"brand_sizes\".\"size_japan\" = 'XS'))"
      brand_sql.should == expect_sql
    end 
    it 'サイズが複数選択された場合' do
      select_size = ['XXS','XS','S','M','L','XL']
      brand_data = BrandSize.select_size(select_size)
      expect = BrandSize.where("(((((\"brand_sizes\".\"size_japan\" = 'XXS' OR \"brand_sizes\".\"size_japan\" = 'XS') OR \"brand_sizes\".\"size_japan\" = 'S') OR \"brand_sizes\".\"size_japan\" = 'M') OR \"brand_sizes\".\"size_japan\" = 'L') OR \"brand_sizes\".\"size_japan\" = 'XL')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_size(select_size).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((((((\"brand_sizes\".\"size_japan\" = 'XXS' OR \"brand_sizes\".\"size_japan\" = 'XS') OR \"brand_sizes\".\"size_japan\" = 'S') OR \"brand_sizes\".\"size_japan\" = 'M') OR \"brand_sizes\".\"size_japan\" = 'L') OR \"brand_sizes\".\"size_japan\" = 'XL'))"
      brand_sql.should == expect_sql
    end
  end

  describe 'ブランド名' do
    it 'ブランド名が入力されなかった場合' do
      input_brand = ''
      brand_data = BrandSize.select_name(input_brand)
      expect = BrandSize.where("")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_name(input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\""
      brand_sql.should == expect_sql
    end
    it 'ブランド名が大文字で完全に入力された場合' do
      input_brand = 'BALENCIAGA'
      brand_data = BrandSize.select_name(input_brand)
      expect = BrandSize.where("(\"brand_sizes\".\"name\" ILIKE '%BALENCIAGA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%BALENCIAGA%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_name(input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((\"brand_sizes\".\"name\" ILIKE '%BALENCIAGA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%BALENCIAGA%'))"
      brand_sql.should == expect_sql
    end
    it 'ブランド名が小文字で完全に入力された場合' do
      input_brand = 'balenciaga'
      brand_data = BrandSize.select_name(input_brand)
      expect = BrandSize.where("(\"brand_sizes\".\"name\" ILIKE '%balenciaga%' OR \"brand_sizes\".\"name_kana\" ILIKE '%balenciaga%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_name(input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((\"brand_sizes\".\"name\" ILIKE '%balenciaga%' OR \"brand_sizes\".\"name_kana\" ILIKE '%balenciaga%'))"
      brand_sql.should == expect_sql
    end
    it 'ブランド名が大文字と小文字で完全に入力された場合' do
      input_brand = 'BalENcIagA'
      brand_data = BrandSize.select_name(input_brand)
      expect = BrandSize.where("(\"brand_sizes\".\"name\" ILIKE '%BalENcIagA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%BalENcIagA%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_name(input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((\"brand_sizes\".\"name\" ILIKE '%BalENcIagA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%BalENcIagA%'))"
      brand_sql.should == expect_sql
    end
    it 'ブランド名がカタカナで完全に入力された場合' do
      input_brand = 'バレンシアガ'
      brand_data = BrandSize.select_name(input_brand)
      expect = BrandSize.where("(\"brand_sizes\".\"name\" ILIKE '%バレンシアガ%' OR \"brand_sizes\".\"name_kana\" ILIKE '%バレンシアガ%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_name(input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((\"brand_sizes\".\"name\" ILIKE '%バレンシアガ%' OR \"brand_sizes\".\"name_kana\" ILIKE '%バレンシアガ%'))"
      brand_sql.should == expect_sql
    end
    it 'ブランド名が大文字で不完全に入力された場合' do
      input_brand = 'NCIA'
      brand_data = BrandSize.select_name(input_brand)
      expect = BrandSize.where("(\"brand_sizes\".\"name\" ILIKE '%NCIA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%NCIA%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_name(input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((\"brand_sizes\".\"name\" ILIKE '%NCIA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%NCIA%'))"
      brand_sql.should == expect_sql
    end
    it 'ブランド名が小文字で不完全に入力された場合' do
      input_brand = 'ncia'
      brand_data = BrandSize.select_name(input_brand)
      expect = BrandSize.where("(\"brand_sizes\".\"name\" ILIKE '%ncia%' OR \"brand_sizes\".\"name_kana\" ILIKE '%ncia%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_name(input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((\"brand_sizes\".\"name\" ILIKE '%ncia%' OR \"brand_sizes\".\"name_kana\" ILIKE '%ncia%'))"
      brand_sql.should == expect_sql
    end
    it 'ブランド名が大文字と小文字で不完全に入力された場合' do
      input_brand = 'NcIa'
      brand_data = BrandSize.select_name(input_brand)
      expect = BrandSize.where("(\"brand_sizes\".\"name\" ILIKE '%NcIa%' OR \"brand_sizes\".\"name_kana\" ILIKE '%NcIa%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_name(input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((\"brand_sizes\".\"name\" ILIKE '%NcIa%' OR \"brand_sizes\".\"name_kana\" ILIKE '%NcIa%'))"
      brand_sql.should == expect_sql
    end
    it 'ブランド名がカタカナで不完全に入力された場合' do
      input_brand = 'ンシア'
      brand_data = BrandSize.select_name(input_brand)
      expect = BrandSize.where("(\"brand_sizes\".\"name\" ILIKE '%ンシア%' OR \"brand_sizes\".\"name_kana\" ILIKE '%ンシア%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_name(input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((\"brand_sizes\".\"name\" ILIKE '%ンシア%' OR \"brand_sizes\".\"name_kana\" ILIKE '%ンシア%'))"
      brand_sql.should == expect_sql
    end
  end

  describe 'サイズとブランド名' do
    it 'サイズが1つ選択され、ブランド名が入力された場合' do
      select_size = ['XXS']
      input_brand = 'BOTTEGA VENETA'
      brand_data = BrandSize.select_size_and_name(select_size,input_brand)
      expect = BrandSize.where("\"brand_sizes\".\"size_japan\" = 'XXS' AND (\"brand_sizes\".\"name\" ILIKE '%BOTTEGA VENETA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%BOTTEGA VENETA%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_size_and_name(select_size,input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE (\"brand_sizes\".\"size_japan\" = 'XXS' AND (\"brand_sizes\".\"name\" ILIKE '%BOTTEGA VENETA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%BOTTEGA VENETA%'))"
      brand_sql.should == expect_sql
    end
    it 'サイズが1つ選択され、ブランド名が入力されなかった場合' do
      select_size = ['XXS']
      input_brand = ''
      brand_data = BrandSize.select_size_and_name(select_size,input_brand)
      expect = BrandSize.where("\"brand_sizes\".\"size_japan\" = 'XXS'")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_size_and_name(select_size,input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE \"brand_sizes\".\"size_japan\" = 'XXS'"
      brand_sql.should == expect_sql
    end
    it 'サイズが複数選択され、ブランド名が入力された場合' do
      select_size = ['XXS','XS','S','M','L','XL']
      input_brand = 'BOTTEGA VENETA'
      brand_data = BrandSize.select_size_and_name(select_size,input_brand)
      expect = BrandSize.where("(((((\"brand_sizes\".\"size_japan\" = 'XXS' OR \"brand_sizes\".\"size_japan\" = 'XS') OR \"brand_sizes\".\"size_japan\" = 'S') OR \"brand_sizes\".\"size_japan\" = 'M') OR \"brand_sizes\".\"size_japan\" = 'L') OR \"brand_sizes\".\"size_japan\" = 'XL') AND (\"brand_sizes\".\"name\" ILIKE '%BOTTEGA VENETA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%BOTTEGA VENETA%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_size_and_name(select_size,input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((((((\"brand_sizes\".\"size_japan\" = 'XXS' OR \"brand_sizes\".\"size_japan\" = 'XS') OR \"brand_sizes\".\"size_japan\" = 'S') OR \"brand_sizes\".\"size_japan\" = 'M') OR \"brand_sizes\".\"size_japan\" = 'L') OR \"brand_sizes\".\"size_japan\" = 'XL') AND (\"brand_sizes\".\"name\" ILIKE '%BOTTEGA VENETA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%BOTTEGA VENETA%'))"
      brand_sql.should == expect_sql
    end
    it 'サイズが複数選択され、ブランド名が入力されなかった場合' do
      select_size = ['XXS','XS','S','M','L','XL']
      input_brand = ''
      brand_data = BrandSize.select_size_and_name(select_size,input_brand)
      expect = BrandSize.where("(((((\"brand_sizes\".\"size_japan\" = 'XXS' OR \"brand_sizes\".\"size_japan\" = 'XS') OR \"brand_sizes\".\"size_japan\" = 'S') OR \"brand_sizes\".\"size_japan\" = 'M') OR \"brand_sizes\".\"size_japan\" = 'L') OR \"brand_sizes\".\"size_japan\" = 'XL')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_size_and_name(select_size,input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((((((\"brand_sizes\".\"size_japan\" = 'XXS' OR \"brand_sizes\".\"size_japan\" = 'XS') OR \"brand_sizes\".\"size_japan\" = 'S') OR \"brand_sizes\".\"size_japan\" = 'M') OR \"brand_sizes\".\"size_japan\" = 'L') OR \"brand_sizes\".\"size_japan\" = 'XL'))"
      brand_sql.should == expect_sql
    end
    it 'サイズが選択されず、ブランド名が入力された場合' do
      select_size = ''
      input_brand = 'BOTTEGA VENETA'
      brand_data = BrandSize.select_size_and_name(select_size,input_brand)
      expect = BrandSize.where("(\"brand_sizes\".\"name\" ILIKE '%BOTTEGA VENETA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%BOTTEGA VENETA%')")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_size_and_name(select_size,input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\"  WHERE ((\"brand_sizes\".\"name\" ILIKE '%BOTTEGA VENETA%' OR \"brand_sizes\".\"name_kana\" ILIKE '%BOTTEGA VENETA%'))"
      brand_sql.should == expect_sql
    end
    it 'サイズが選択されず、ブランド名が入力されなかった場合' do
      select_size = ''
      input_brand = ''
      brand_data = BrandSize.select_size_and_name(select_size,input_brand)
      expect = BrandSize.where("")
      id_list = brand_data.map { |data| data.id }.sort
      expect_id_list = expect.map { |data| data.id }.sort
      expect_id_list.should == id_list
      brand_sql = BrandSize.select_size_and_name(select_size,input_brand).to_sql
      expect_sql = "SELECT \"brand_sizes\".* FROM \"brand_sizes\""
      brand_sql.should == expect_sql
    end
  end
end
