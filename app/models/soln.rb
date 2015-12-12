class Soln < ActiveRecord::Base
  belongs_to :prob
  has_paper_trail
end
