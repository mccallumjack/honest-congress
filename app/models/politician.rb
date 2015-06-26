class Politician < ActiveRecord::Base
  has_many :top_industries, class_name: "CandidateIndustry"
  has_many :contribution_summaries
  has_many :top_contributors



  def self.create_politicians_from_json(json_array)
    json_array.each do |politician|
      if Politician.all.map(&:cid).include?(politician["cid"])
        next
      else
        Politician.create(cid: politician["cid"], name: politician["firstlast"], gender: politician["gender"], firstelectoff: politician["firstelectoff"], party: politician["party"], office: self.office_parser(politician["office"]), lastname: politician["lastname"],state: self.state_parser(politician["office"]))
      end
    end
  end

  def self.office_parser(string)
    string.split('')[2..-1].include?("S") ? "Senator" : "Congressman"
  end

  def self.state_parser(string)
    string.split('')[0..1]
  end

  def self.pull_by_state(state)

  end


end


