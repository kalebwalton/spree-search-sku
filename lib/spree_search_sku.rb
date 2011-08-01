require 'spree_core'
require 'spree_search_sku_hooks'

module SpreeSearchSku
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      if Spree::Config.instance
        Spree::Config.searcher_class = Spree::Search::Sku
      end

      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
