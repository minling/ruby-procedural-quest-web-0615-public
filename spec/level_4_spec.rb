describe "Hashes" do
  let (:adventure_hash) do
    {land: "Flatiron School", knights: [
      {name: "Amanda", quest: "To conquer the world, one Ruby method at a time", favorite_color: "Blue"},
      {name: "Steven", quest: "To own every T-shirt in the universe", favorite_color: "Red"},
      {name: "Josh", quest: "To kill them with kindness", favorite_color: "Orange"},
      {name: "Sophie", quest: "To share cute kitten videos", favorite_color: "Green"},
      {name: "Rose", quest: "To spread AJAX wisdom to the coding world", favorite_color: "Purple"},
      {name: "Deniz", quest: "To be a coding wizard", favorite_color: "Yellow"} ]
    }
  end

  describe '#adventure_land(adventure_hash)' do
    it 'returns the value associated with the :land key' do
      expect(adventure_land(adventure_hash)).to eq("Flatiron School")
    end
  end

  describe '#add_knight(name, quest, favorite_color, hash)' do
    it 'adds a knight to the hash' do
      expect(add_knight("Ben", "To tell the best jokes", "Blue! No, yellow...", adventure_hash)[:knights]).to include({:name=>"Ben", :quest=>"To tell the best jokes", :favorite_color=>"Blue! No, yellow..."})
    end
  end

  describe '#all_quests(adventure_hash)' do
    it 'returns an array of all quests' do
      expect(all_quests(adventure_hash)).to eq(["To conquer the world, one Ruby method at a time", "To own every T-shirt in the universe", "To kill them with kindness", "To share cute kitten videos", "To spread AJAX wisdom to the coding world", "To be a coding wizard"])
    end
  end

  describe '#reformat_hash(adventure_hash)' do
    it "returns a hash with knights' names as keys and favorite colors as values" do
      expect(reformat_hash(adventure_hash)).to eq({"Amanda"=>"Blue", "Steven"=>"Red", "Josh"=>"Orange", "Sophie"=>"Green", "Rose"=>"Purple", "Deniz"=>"Yellow"})
    end
  end
end