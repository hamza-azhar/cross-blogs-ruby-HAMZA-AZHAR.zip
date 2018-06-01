require 'rails_helper'

RSpec.describe "Comments", type: :request do
  describe 'GET #index' do
    context 'with valid params' do
      it 'returns an processable entity response' do
        article = FactoryBot.create(:article, :title => 'test', :content => 'test content')
        get article_comments_path(article_id: article.id)
        expect(response).to have_http_status(200)
      end
    end
  end
end
