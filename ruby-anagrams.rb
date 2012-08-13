# removing whitespace (in case of multi-word anagrams), converting to lowercase and getting
# array representations:
string_1_arr = ARGV[0].gsub(/\s+/, "").downcase.split("")
string_2_arr = ARGV[1].gsub(/\s+/, "").downcase.split("")

if string_1_arr.size != string_2_arr.size
  puts "Not anagrams"
  exit
end

string_1_arr.each do |c|
  print c, " ",string_2_arr, "\n" # debug statement, but left here 'cuz the output looks cool
  
  # just delete would delete all occurences of the same letter, e.g. "food" would become
  # "fd" if we delete 'o', which is obviously wrong. Have to use delete_at(index) instead
  if i = string_2_arr.index(c)
    string_2_arr.delete_at i 
  else
    puts "Not anagrams"
    exit
  end
end

puts "Anagrams!"






