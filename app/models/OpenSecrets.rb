
require 'opensecrets'

class OpenSecrets

  @@member = OpenSecrets::Member.new

  def self.get_legislators_by_state(state)
    @@member.get_legislators({:id => state})
  end
end