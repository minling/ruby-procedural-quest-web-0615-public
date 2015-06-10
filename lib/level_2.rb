# In each method, replace one "Ekki-ekki-ekki-ekki-PTANG" with "Ni!"

def knights_shrubbery
  if "A shrubbery"
    "Ni!"
  elsif
    "Ekki-ekki-ekki-ekki-PTANG"
  end
end

def knights_nil
  if nil
    "Ekki-ekki-ekki-ekki-PTANG"
  else
    "Ni!"
  end
end

def knights_zero
  0 ? "Ni!" : "Ekki-ekki-ekki-ekki-PTANG"
end

def knights_true
  true ? "Ni!" : "Ekki-ekki-ekki-ekki-PTANG"
end

def knights_false
  false ? "Ekki-ekki-ekki-ekki-PTANG" : "Ni!" 
end