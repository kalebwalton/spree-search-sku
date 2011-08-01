module Spree::Search
  class Sku < Spree::Search::Base
    def get_products_conditions_for(base_scope, query)
      fields = [:name, :description, :sku]
      values = query.split

      where_str = fields.map{|field|
        if field == :sku
          Array.new(values.size, "variants.sku LIKE ?").join(' OR ') 
        else
          Array.new(values.size, "products.#{field} LIKE ?").join(' OR ') 
        end
      }.join(' OR ')

      base_scope.joins(:variants_including_master).where([where_str, values.map{|value| "%#{value}%"} * fields.size].flatten)
    end
  end
end