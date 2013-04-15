module Spree
  Product.class_eval do
    translates :name, :description, :meta_description, :meta_keywords

    attr_accessible :translations_attributes

    accepts_nested_attributes_for :translations

    has_and_belongs_to_many :catalogues

    add_search_scope :in_catalogue do |catalogue_id|
      joins("inner join public.catalogues_products cp on cp.product_id = #{Spree::Product.quoted_table_name}.id AND cp.catalogue_id = #{catalogue_id}")
    end

    add_search_scope :in_price_book do |price_book_id|
      where(["#{Spree::Price.quoted_table_name}.price_book_id = ?", price_book_id])
    end
  end
end
