class VisitorsController < ApplicationController
	@probs = Prob.order(votes: :desc).limit(6)
	@solns = Soln.order(created_at: :desc).limit(6)
	@Challenge = Challenge.order(created_at: :desc).limit(6)
end
