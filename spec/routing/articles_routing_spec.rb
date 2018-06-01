require 'rails_helper'

RSpec.describe ArticlesController, type: :routing do
  describe 'routing' do

    it 'routes to #create' do
      expect(:post => '/articles.json').to route_to('articles#create', :format => 'json')
    end

    it 'routes to #destroy' do
      expect(:delete => '/articles/1.json').to route_to('articles#destroy', :id => '1', :format => 'json')
    end

  end
end
