describe 'Methods and Return Values' do
  describe "#mission" do
    it "returns your mission" do
      expect(mission).to eq("To seek the Holy Grail")
    end
  end

  describe "#fetch(animal)" do
    it "commands you to fetch the passed in animal" do
      expect(fetch("vache")).to eq("Fetchez la vache!")
    end
  end

  describe "#accent (default arguments)" do
    it "explains your French accent when invoked without an argument" do
      expect(accent).to eq("I am French! Why do you think I have this outrageous accent?!")
    end

    it "can be called with an argument" do
      expect(accent("Spanish")).to eq("I am Spanish! Why do you think I have this outrageous accent?!")
    end
  end

  describe "#parents (named parameters)" do
    it "can take a hash as an argument" do
      parents_hash = {mother: "turkey", father: "oranges"}
      expect(parents(parents_hash)).to eq("Your mother was a turkey, and your father smelt of oranges!")
    end

    it "returns a default insult" do
      expect(parents).to eq("Your mother was a hamster, and your father smelt of elderberries!")
    end

    it "accepts a hash with only one key-value pair" do
      parents_hash = {mother: "moose"}
      expect(parents(parents_hash)).to eq("Your mother was a moose, and your father smelt of elderberries!")
    end
  end
end