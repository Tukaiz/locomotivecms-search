module Locomotive::Search  
  class Engine < ::Rails::Engine
    initializer "locomotive.search.concerns" do
      require "locomotive/search/content_type_reindexer"
      require "locomotive/search/concerns"

      Locomotive::PartialsCell.add_template(:custom_fields_form, "searchable")
    end
  end
end