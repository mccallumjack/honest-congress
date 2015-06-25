def state_to_form(file)
  finished_fields = []
  File.open(file,"r") do |file|
    file.each_line do |line|
      line = line.split(' ')
      abberv = line[-1]
      state = line[0..-2].join(" ")
      string = "<option value='#{abberv}'>#{state}</option>"
      finished_fields << string
    end
  end
  return finished_fields
end

File.open('state_inputs.txt', 'w') { |file| file.write(state_to_form('states.txt').join("\n"))}


