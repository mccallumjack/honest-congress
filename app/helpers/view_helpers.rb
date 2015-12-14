def currency(int)
  final_string = '$'
  split_groups = int.to_s.split('').reverse.each_slice(3).to_a
  split_groups.reverse.each do |group|
    final_string += (group.reverse.join('') + ',')
  end 
  final_string[0..-2]
end
