def mission
  "To seek the Holy Grail"
end

def fetch(animal)
  "Fetchez la vache!"
end

def accent (language="French")
  "I am #{language}! Why do you think I have this outrageous accent?!"
end


def parents (hash = {mother: "hamster", father: "elderberries"})
  default_hash = {mother: "hamster", father: "elderberries"}
  hash = default_hash.merge(hash)
  "Your mother was a #{hash[:mother]}, and your father smelt of #{hash[:father]}!"
end

