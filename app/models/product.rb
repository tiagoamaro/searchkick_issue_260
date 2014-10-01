class Product < ActiveRecord::Base
  searchkick

  def search_data
    { name: name }
  end
end
