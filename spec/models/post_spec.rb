require 'spec_helper'

describe Post do

	subject { FactoryGirl.create(:post) }

	it { should respond_to(:annotations)}

	it "is viewable by default" do
		expect(subject.viewable).to eql(true)
	end
  
end