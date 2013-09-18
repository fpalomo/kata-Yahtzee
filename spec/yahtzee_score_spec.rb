require 'spec_helper'

describe Yahtzee_score, "#score" do
	let (:yahtzee_score) {Yahtzee_score.new}

	describe "for categories of numbers" do
		it "the sum for VALUES" do
			yahtzee_score.points(:values, [1,2,2,2,2], 1).should eq (1)
			yahtzee_score.points(:values, [1,2,1,2,2], 1).should eq (2)
			yahtzee_score.points(:values, [1,2,1,2,2], 2).should eq (6)
			yahtzee_score.points(:values, [1,2,1,2,5], 2).should eq (4)
			yahtzee_score.points(:values, [1,2,1,3,2], 3).should eq (3)
			yahtzee_score.points(:values, [1,2,1,3,3], 3).should eq (6)
			yahtzee_score.points(:values, [1,2,1,4,2], 4).should eq (4)
			yahtzee_score.points(:values, [1,4,1,4,5], 4).should eq (8)
			yahtzee_score.points(:values, [1,2,1,2,5], 5).should eq (5)
			yahtzee_score.points(:values, [1,5,1,2,5], 5).should eq (10)
			yahtzee_score.points(:values, [1,6,1,2,2], 6).should eq (6)
			yahtzee_score.points(:values, [1,6,1,6,5], 6).should eq (12)
		end
	end
 

end