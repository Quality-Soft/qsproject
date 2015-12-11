require 'rails_helper'
require 'spec_helper'


describe User do    
    subject { create(:user) }    
        its(:name) { should == "Micael Santos" }
        its(:email) { should == "micael@example.com" }

    it { should_not be_admin }
    end


=begin
RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
=end