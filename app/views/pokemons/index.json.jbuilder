
json.pokemons @pokemons do |pokemon|
  json.name pokemon.name
  json.image_url pokemon.image_url
end


# To use jbuilider, undo respond_to limiters and manage the limits from the view.
# basic layout is == json.property element. property

# To use loops
#
# json.artists @artists do |artist|
#   json.(artist, :id, :name, :label)
#
#   json.albums artist.albums do |album|
#     json.(album, :id, :name)
#   end
# end
