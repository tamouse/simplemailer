require 'spec_helper'

module SimpleMailer
	describe SimpleMailer do
		it "should respond to #run" do
			SimpleMailer.should respond_to(:run)
		end
	end
end