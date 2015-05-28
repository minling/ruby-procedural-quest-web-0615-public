describe 'Conditionals and Truthiness' do
  describe "#knights_shrubbery" do
    it "returns 'Ni!'" do
      expect(knights_shrubbery).to eq("Ni!")
    end
  end

  describe "#knights_nil" do
    it "returns 'Ni!'" do
      expect(knights_nil).to eq("Ni!")
    end
  end

  describe "#knights_zero" do
    it "returns 'Ni!'" do
      expect(knights_zero).to eq("Ni!")
    end
  end

  describe "#knights_true" do
    it "returns 'Ni!'" do
      expect(knights_true).to eq("Ni!")
    end
  end

  describe "#knights_false" do
    it "returns 'Ni!'" do
      expect(knights_false).to eq("Ni!")
    end
  end
end