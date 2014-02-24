# coding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

BrandSize.delete_all

BrandSize.create([
  {
    name: 'BALENCIAGA',
    name_kana: 'バレンシアガ',
    country: 'フランス',
    item: 'アウター',
    size: '44',
    size_japan: 'S'
  },
  {
    name: 'BALENCIAGA',
    name_kana: 'バレンシアガ',
    country: 'フランス',
    item: 'アウター',
    size: '46',
    size_japan: 'M'
  },
  {
    name: 'BALENCIAGA',
    name_kana: 'バレンシアガ',
    country: 'フランス',
    item: 'アウター',
    size: '48',
    size_japan: 'L'
  },
  {
    name: 'BALENCIAGA',
    name_kana: 'バレンシアガ',
    country: 'フランス',
    item: 'アウター',
    size: '50',
    size_japan: 'XL'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '42',
    size_japan: 'XXS'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '44',
    size_japan: 'XS'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '46',
    size_japan: 'S'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '48',
    size_japan: 'M'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '50',
    size_japan: 'L'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '52',
    size_japan: 'XL'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '54',
    size_japan: 'XXL'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '56',
    size_japan: 'XXXL'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '58',
    size_japan: '4XL'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '60',
    size_japan: '5XL'
  },
  {
    name: 'BOTTEGA VENETA',
    name_kana: 'ボッテガヴェネタ',
    country: 'イタリア',
    item: 'アウター',
    size: '62',
    size_japan: '62'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '42',
    size_japan: 'XXS'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '44',
    size_japan: 'XS'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '46',
    size_japan: 'S'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '48',
    size_japan: 'M'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '50',
    size_japan: 'L'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '52',
    size_japan: 'XL'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '54',
    size_japan: 'XXL'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '56',
    size_japan: 'XXXL'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '58',
    size_japan: '4XL'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '60',
    size_japan: '5XL'
  },
  {
    name: 'BRUNELLO CUCINELLI',
    name_kana: 'ブルネロクチネリ',
    country: 'イタリア',
    item: 'アウター',
    size: '62',
    size_japan: '62'
  },
  {
    name: 'BURBERRY PRORSUM',
    name_kana: 'バーバリープローサム',
    country: 'イタリア',
    item: 'アウター',
    size: '44',
    size_japan: 'S'
  },
  {
    name: 'BURBERRY PRORSUM',
    name_kana: 'バーバリープローサム',
    country: 'イタリア',
    item: 'アウター',
    size: '46',
    size_japan: 'M'
  },
  {
    name: 'BURBERRY PRORSUM',
    name_kana: 'バーバリープローサム',
    country: 'イタリア',
    item: 'アウター',
    size: '48',
    size_japan: 'L'
  },
  {
    name: 'BURBERRY PRORSUM',
    name_kana: 'バーバリープローサム',
    country: 'イタリア',
    item: 'アウター',
    size: '50',
    size_japan: 'XL'
  },
  {
    name: 'BURBERRY PRORSUM',
    name_kana: 'バーバリープローサム',
    country: 'イタリア',
    item: 'アウター',
    size: '52',
    size_japan: 'XXL'
  },
  {
    name: 'BURBERRY PRORSUM',
    name_kana: 'バーバリープローサム',
    country: 'イタリア',
    item: 'アウター',
    size: '54',
    size_japan: 'XXL'
  },
  {
    name: 'BURBERRY PRORSUM',
    name_kana: 'バーバリープローサム',
    country: 'イタリア',
    item: 'アウター',
    size: '56',
    size_japan: '4XL'
  },
  {
    name: 'BURBERRY PRORSUM',
    name_kana: 'バーバリープローサム',
    country: 'イタリア',
    item: 'アウター',
    size: '58',
    size_japan: '5XL'
  },
  {
    name: 'BURBERRY PRORSUM',
    name_kana: 'バーバリープローサム',
    country: 'イタリア',
    item: 'アウター',
    size: '60',
    size_japan: '60'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '42',
    size_japan: 'XXS'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '44',
    size_japan: 'XS'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '46',
    size_japan: 'S'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '48',
    size_japan: 'M'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '50',
    size_japan: 'L'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '52',
    size_japan: 'XL'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '54',
    size_japan: 'XXL'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '56',
    size_japan: 'XXXL'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '58',
    size_japan: '4XL'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '60',
    size_japan: '5XL'
  },
  {
    name: 'D SQUARED2',
    name_kana: 'ディースクエアード',
    country: 'イタリア',
    item: 'アウター',
    size: '62',
    size_japan: '62'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '42',
    size_japan: 'XXS'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '42',
    size_japan: 'XS'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '44',
    size_japan: 'XS'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '44',
    size_japan: 'S'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '46',
    size_japan: 'M'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '48',
    size_japan: 'L'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '50',
    size_japan: 'XL'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '52',
    size_japan: 'XXL'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '54',
    size_japan: 'XXXL'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '56',
    size_japan: '4XL'
  },
  {
    name: 'DIOR HOMME',
    name_kana: 'ディオールオム',
    country: 'フランス',
    item: 'アウター',
    size: '58',
    size_japan: '5XL'
  },
  {
    name: 'Dolce & Gabbana',
    name_kana: 'ドルチェ&ガッバーナ',
    country: 'イタリア',
    item: 'アウター',
    size: '44',
    size_japan: 'XS'
  },
  {
    name: 'Dolce & Gabbana',
    name_kana: 'ドルチェ&ガッバーナ',
    country: 'イタリア',
    item: 'アウター',
    size: '46',
    size_japan: 'S'
  },
  {
    name: 'Dolce & Gabbana',
    name_kana: 'ドルチェ&ガッバーナ',
    country: 'イタリア',
    item: 'アウター',
    size: '48',
    size_japan: 'M'
  },
  {
    name: 'Dolce & Gabbana',
    name_kana: 'ドルチェ&ガッバーナ',
    country: 'イタリア',
    item: 'アウター',
    size: '50',
    size_japan: 'L'
  },
  {
    name: 'Dolce & Gabbana',
    name_kana: 'ドルチェ&ガッバーナ',
    country: 'イタリア',
    item: 'アウター',
    size: '52',
    size_japan: 'XL'
  },
  {
    name: 'Dolce & Gabbana',
    name_kana: 'ドルチェ&ガッバーナ',
    country: 'イタリア',
    item: 'アウター',
    size: '54',
    size_japan: 'XXL'
  },
  {
    name: 'GUCCI',
    name_kana: 'グッチ',
    country: 'イタリア',
    item: 'アウター',
    size: '44',
    size_japan: 'S'
  },
  {
    name: 'GUCCI',
    name_kana: 'グッチ',
    country: 'イタリア',
    item: 'アウター',
    size: '46',
    size_japan: 'M'
  },
  {
    name: 'GUCCI',
    name_kana: 'グッチ',
    country: 'イタリア',
    item: 'アウター',
    size: '48',
    size_japan: 'L'
  },
  {
    name: 'GUCCI',
    name_kana: 'グッチ',
    country: 'イタリア',
    item: 'アウター',
    size: '50',
    size_japan: 'XL'
  },
  {
    name: 'GUCCI',
    name_kana: 'グッチ',
    country: 'イタリア',
    item: 'アウター',
    size: '52',
    size_japan: 'XXL'
  },
  {
    name: 'GUCCI',
    name_kana: 'グッチ',
    country: 'イタリア',
    item: 'アウター',
    size: '54',
    size_japan: 'XXXL'
  },
  {
    name: 'GUCCI',
    name_kana: 'グッチ',
    country: 'イタリア',
    item: 'アウター',
    size: '56',
    size_japan: '4XL'
  },
  {
    name: 'LANVIN',
    name_kana: 'ランバン',
    country: 'フランス',
    item: 'アウター',
    size: '44',
    size_japan: 'XS'
  },
  {
    name: 'LANVIN',
    name_kana: 'ランバン',
    country: 'フランス',
    item: 'アウター',
    size: '46',
    size_japan: 'S'
  },
  {
    name: 'LANVIN',
    name_kana: 'ランバン',
    country: 'フランス',
    item: 'アウター',
    size: '48',
    size_japan: 'M'
  },
  {
    name: 'LANVIN',
    name_kana: 'ランバン',
    country: 'フランス',
    item: 'アウター',
    size: '50',
    size_japan: 'L'
  },
  {
    name: 'LANVIN',
    name_kana: 'ランバン',
    country: 'フランス',
    item: 'アウター',
    size: '52',
    size_japan: 'L'
  },
  {
    name: 'LANVIN',
    name_kana: 'ランバン',
    country: 'フランス',
    item: 'アウター',
    size: '52',
    size_japan: 'XL'
  },
  {
    name: 'LANVIN',
    name_kana: 'ランバン',
    country: 'フランス',
    item: 'アウター',
    size: '54',
    size_japan: 'XL'
  },
  {
    name: 'LANVIN',
    name_kana: 'ランバン',
    country: 'フランス',
    item: 'アウター',
    size: '56',
    size_japan: 'XXL'
  },
  {
    name: 'LANVIN',
    name_kana: 'ランバン',
    country: 'フランス',
    item: 'アウター',
    size: '58',
    size_japan: 'XXL'
  },
  {
    name: 'LANVIN',
    name_kana: 'ランバン',
    country: 'フランス',
    item: 'アウター',
    size: '58',
    size_japan: 'XXXL'
  },
  {
    name: 'MONCLER',
    name_kana: 'モンクレール',
    country: 'フランス',
    item: 'アウター',
    size: '00',
    size_japan: 'XS'
  },
  {
    name: 'MONCLER',
    name_kana: 'モンクレール',
    country: 'フランス',
    item: 'アウター',
    size: '0',
    size_japan: 'S'
  },
  {
    name: 'MONCLER',
    name_kana: 'モンクレール',
    country: 'フランス',
    item: 'アウター',
    size: '1',
    size_japan: 'S'
  },
  {
    name: 'MONCLER',
    name_kana: 'モンクレール',
    country: 'フランス',
    item: 'アウター',
    size: '1',
    size_japan: 'M'
  },
  {
    name: 'MONCLER',
    name_kana: 'モンクレール',
    country: 'フランス',
    item: 'アウター',
    size: '2',
    size_japan: 'M'
  },
  {
    name: 'MONCLER',
    name_kana: 'モンクレール',
    country: 'フランス',
    item: 'アウター',
    size: '3',
    size_japan: 'L'
  },
  {
    name: 'MONCLER',
    name_kana: 'モンクレール',
    country: 'フランス',
    item: 'アウター',
    size: '4',
    size_japan: 'XL'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '38',
    size_japan: 'XXS'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '40',
    size_japan: 'XS'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '42',
    size_japan: 'S'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '44',
    size_japan: 'M'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '46',
    size_japan: 'L'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '48',
    size_japan: 'XL'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '50',
    size_japan: 'XXL'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '52',
    size_japan: 'XXXL'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '54',
    size_japan: '4XL'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '56',
    size_japan: '5XL'
  },
  {
    name: 'Saint Laurent',
    name_kana: 'サンローラン',
    country: 'フランス',
    item: 'アウター',
    size: '62',
    size_japan: '62'
  },
  {
    name: 'THOM BROWNE',
    name_kana: 'トムブラウン',
    country: 'アメリカ',
    item: 'シャツ',
    size: '0',
    size_japan: 'XS'
  },
  {
    name: 'THOM BROWNE',
    name_kana: 'トムブラウン',
    country: 'アメリカ',
    item: 'シャツ',
    size: '1',
    size_japan: 'S'
  },
  {
    name: 'THOM BROWNE',
    name_kana: 'トムブラウン',
    country: 'アメリカ',
    item: 'シャツ',
    size: '2',
    size_japan: 'M'
  },
  {
    name: 'THOM BROWNE',
    name_kana: 'トムブラウン',
    country: 'アメリカ',
    item: 'シャツ',
    size: '3',
    size_japan: 'L'
  },
  {
    name: 'THOM BROWNE',
    name_kana: 'トムブラウン',
    country: 'アメリカ',
    item: 'シャツ',
    size: '4',
    size_japan: 'XL'
  },
  {
    name: 'THOM BROWNE',
    name_kana: 'トムブラウン',
    country: 'アメリカ',
    item: 'シャツ',
    size: '5',
    size_japan: 'XXL'
  },
  {
    name: 'H&M',
    name_kana: 'エイチアンドエム',
    country: 'スウェーデン',
    item: 'トップス',
    size: 'XS',
    size_japan: 'S'
  },
  {
    name: 'H&M',
    name_kana: 'エイチアンドエム',
    country: 'スウェーデン',
    item: 'トップス',
    size: 'S',
    size_japan: 'M'
  },
  {
    name: 'H&M',
    name_kana: 'エイチアンドエム',
    country: 'スウェーデン',
    item: 'トップス',
    size: 'M',
    size_japan: 'L'
  },
  {
    name: 'H&M',
    name_kana: 'エイチアンドエム',
    country: 'スウェーデン',
    item: 'トップス',
    size: 'L',
    size_japan: 'XXL'
  },
  {
    name: 'H&M',
    name_kana: 'エイチアンドエム',
    country: 'スウェーデン',
    item: 'トップス',
    size: 'XL',
    size_japan: 'XXL'
  },
  {
    name: 'H&M',
    name_kana: 'エイチアンドエム',
    country: 'スウェーデン',
    item: 'トップス',
    size: 'XXL',
    size_japan: 'XXXL'
  },
  {
    name: 'Old Navy',
    name_kana: 'オールドネイビー',
    country: 'アメリカ',
    item: 'トップス',
    size: 'XXS',
    size_japan: 'XS'
  },
  {
    name: 'Old Navy',
    name_kana: 'オールドネイビー',
    country: 'アメリカ',
    item: 'トップス',
    size: 'XS',
    size_japan: 'S'
  },
  {
    name: 'Old Navy',
    name_kana: 'オールドネイビー',
    country: 'アメリカ',
    item: 'トップス',
    size: 'S',
    size_japan: 'M'
  },
  {
    name: 'Old Navy',
    name_kana: 'オールドネイビー',
    country: 'アメリカ',
    item: 'トップス',
    size: 'M',
    size_japan: 'L'
  },
  {
    name: 'Old Navy',
    name_kana: 'オールドネイビー',
    country: 'アメリカ',
    item: 'トップス',
    size: 'L',
    size_japan: 'XL'
  },
  {
    name: 'GAP',
    name_kana: 'ギャップ',
    country: 'アメリカ',
    item: 'トップス',
    size: 'XS',
    size_japan: 'S'
  },
  {
    name: 'GAP',
    name_kana: 'ギャップ',
    country: 'アメリカ',
    item: 'トップス',
    size: 'S',
    size_japan: 'M'
  },
  {
    name: 'GAP',
    name_kana: 'ギャップ',
    country: 'アメリカ',
    item: 'トップス',
    size: 'M',
    size_japan: 'L'
  },
  {
    name: 'GAP',
    name_kana: 'ギャップ',
    country: 'アメリカ',
    item: 'トップス',
    size: 'L',
    size_japan: 'XL'
  },
  {
    name: 'GAP',
    name_kana: 'ギャップ',
    country: 'アメリカ',
    item: 'トップス',
    size: 'XL',
    size_japan: 'XXL'
  }
])
