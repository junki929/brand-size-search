ActiveAdmin.register BrandSize do
  menu :priority => 2
  permit_params :name, :name_kana, :country, :item, :size, :size_japan 

  form do |f|
    f.inputs do
      f.input :name, :as => :string
      f.input :name_kana, :as => :string
      f.input :country, :as => :string
      f.input :item, :as => :string
      f.input :size, :as => :string
      f.input :size_japan, :as => :string
    end
    f.actions
  end
end
