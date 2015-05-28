describe "Arrays" do
  let (:instructions) do
    ["First shalt thou take out the Holy Pin", "Then, shalt thou count to three, no more, no less", "Three shalt be the number thou shalt count, and the number of the counting shalt be three", "Four shalt thou not count, nor either count thou two, excepting that thou then proceed to three", "Five is right out", "Once the number three, being the third number, be reached, then lobbest thou thy Holy Hand Grenade of Antioch towards thou foe, who being naughty in my sight, shall snuff it"]
  end

  describe "#print_instructions(hand_grenade_instructions)" do
    it "prints each instruction and appends a period" do
      expect(STDOUT).to receive(:puts).with("First shalt thou take out the Holy Pin.")
      expect(STDOUT).to receive(:puts).with("Then, shalt thou count to three, no more, no less.")
      expect(STDOUT).to receive(:puts).with("Three shalt be the number thou shalt count, and the number of the counting shalt be three.")
      expect(STDOUT).to receive(:puts).with("Four shalt thou not count, nor either count thou two, excepting that thou then proceed to three.")
      expect(STDOUT).to receive(:puts).with("Five is right out.")
      expect(STDOUT).to receive(:puts).with("Once the number three, being the third number, be reached, then lobbest thou thy Holy Hand Grenade of Antioch towards thou foe, who being naughty in my sight, shall snuff it.")

      print_instructions(instructions)
    end

    it "launches the Holy Hand Grenade of Antioch" do
      expect(print_instructions(instructions)).to eq("One...two...five!!")
    end
  end

  describe "#scream_instructions(hand_grenade_instructions)" do
    it "maps each instruction to its screaming version" do
      expect(scream_instructions(instructions)).to include("FIRST SHALT THOU TAKE OUT THE HOLY PIN!")
      expect(scream_instructions(instructions)).to eq(["FIRST SHALT THOU TAKE OUT THE HOLY PIN!", "THEN, SHALT THOU COUNT TO THREE, NO MORE, NO LESS!", "THREE SHALT BE THE NUMBER THOU SHALT COUNT, AND THE NUMBER OF THE COUNTING SHALT BE THREE!", "FOUR SHALT THOU NOT COUNT, NOR EITHER COUNT THOU TWO, EXCEPTING THAT THOU THEN PROCEED TO THREE!", "FIVE IS RIGHT OUT!", "ONCE THE NUMBER THREE, BEING THE THIRD NUMBER, BE REACHED, THEN LOBBEST THOU THY HOLY HAND GRENADE OF ANTIOCH TOWARDS THOU FOE, WHO BEING NAUGHTY IN MY SIGHT, SHALL SNUFF IT!"])
    end
  end

  describe "#instructions_with_three(hand_grenade_instructions)" do
    it "returns an array of only instructions that contain 'three'" do
      expect(instructions_with_three(instructions)).to eq(["Then, shalt thou count to three, no more, no less", "Three shalt be the number thou shalt count, and the number of the counting shalt be three", "Four shalt thou not count, nor either count thou two, excepting that thou then proceed to three", "Once the number three, being the third number, be reached, then lobbest thou thy Holy Hand Grenade of Antioch towards thou foe, who being naughty in my sight, shall snuff it"])
    end
  end

end