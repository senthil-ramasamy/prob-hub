class Prob < ActiveRecord::Base
	has_many :vprobs
	has_many :solns
	validates :pname, presence: true,
                    length: { minimum: 5 }
end
