require 'spec_helper'

describe Annotation do

	subject { FactoryGirl.create(:annotation) }

	it { should respond_to(:body)}
	it { should respond_to(:post)}
  
end