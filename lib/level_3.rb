def print_instructions(hand_grenade_instructions) 
  hand_grenade_instructions.each do |instructions|
    puts "#{instructions}."
end
"One...two...five!!"
end


def scream_instructions(hand_grenade_instructions)
  hand_grenade_instructions.map do |instructions|
    instructions.upcase + ("!")
  end
end

def instructions_with_three(hand_grenade_instructions)
  hand_grenade_instructions.select do |instructions|
   instructions.include?('three') 
  end
end
