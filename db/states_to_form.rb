def state_to_form(file)
  finished_fields = []
  File.open(file,"r") do |file|
    f.each_line do |line|
      line = line.split(' ')
      abberv = line[0]
      state = line[1]
      string = "<option value= '#{abberv}'>#{state}</option>"
    end
  end
  return finished_fields
end

File.open('state_inputs.txt', 'w') { |file| file.write(state_to_form('states.txt'))}


