# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  i = 0
  name_hash.collect do |key, value|
    if value[i] < value[i + 1] && value[i] < value[i + 2]
      key[i]
    elsif value[i + 1] < value[i] && value[i + 1] < value[i + 2]
      key[i + 1]
    else value[i + 2] < value[i] && value[i + 2] < value[i + 1]
      key[i + 2]
    end
  end 
end