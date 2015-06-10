def adventure_land(adventure_hash)
  adventure_hash[:land]
end

def add_knight(name, quest, favorite_color, hash)
  hash[:knights] << {:name => name, :quest => quest, :favorite_color => favorite_color}
  hash
end

def all_quests(adventure_hash)
  adventure_hash[:knights].collect do |knights|
    knights[:quest]
  end
end

def reformat_hash(adventure_hash)
  hash = {}
  adventure_hash[:knights].each do |knight|
    hash[knight[:name]] = knight[:favorite_color]
  end
  hash

end


