class Politician < ActiveRecord::Base
  has_many :top_industries, class_name: "CandidateIndustry"
  has_many :contribution_summaries
  has_many :top_contributors
end
