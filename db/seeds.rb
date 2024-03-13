Interest.destroy_all

['Adventure', 'Ecotourism', 'Cultural Immersion', 'Cullinary', 'Backpacking', 'Art and Museums', 'Festivals and Events'].each do |name|
  Interest.create(name: name)
end
