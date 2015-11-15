require 'spec_helper'
require 'rspec/rails'

#describe 'meisController' do
RSpec.describe MeisController, type: :controller do
    describe '#index' do
        context 'when you click the button to search without any value in the field' do
            it 'returns Mei'do
            end
        end
    end
end
            
    
=begin
describe 'Article' do
  describe '#language' do
    context 'when title is about Ruby' do
      it 'returns "Ruby"' do
      end
    end

    context 'when title is about Python' do
      it 'returns "Python"' do
      end
    end
  end
end
=end