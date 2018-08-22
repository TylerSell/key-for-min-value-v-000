# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  name_hash.collect do |key, value|
    if value[0] < value[1] && value[0] < value[2]
      key[0]
    elsif value[1] < value[0] && value[1] < value[2]
      key[1]
    else value[2] < value[0] && value[2] < value[1]
      key[2]
    end
  end 
end