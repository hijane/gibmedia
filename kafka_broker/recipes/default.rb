%w[java kafka_broker::structure kafka_broker::resources].each do |rcp|
  include_recipe rcp
end
