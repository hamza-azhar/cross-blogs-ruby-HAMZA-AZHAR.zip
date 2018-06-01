require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe 'POST #create' do
    context 'with invalid params' do
      it 'returns an unprocessable entity response' do
        post articles_path, params: { article: { title: '', content: '', email: '' }, format: :json }
        expect(response).to have_http_status(400)
      end
    end

    context 'with invalid params' do
      it 'returns an unprocessable entity response' do
        post articles_path, params: { article: { title: 'test title', content: 'test content', email: 'test@crossover.com' }, format: :json }
        expect(response).to have_http_status(201)
      end
    end
  end

  describe 'GET #search' do
    context 'with valid params' do
      it 'returns an processable entity response' do
        get search_articles_path, params: {keyword: 'test title'}
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      it 'returns an processable entity response' do
        article = FactoryBot.create(:article, :title => 'test', :content => 'test content')
        put article_path(article), params: { article: { title: 'test title', content: 'updated content'}, format: :json }
        expect(response).to have_http_status(200)
      end
    end

    context 'with invalid params' do
      it 'returns an unprocessable entity response' do
        article = FactoryBot.create(:article, :title => 'test', :content => 'test content')
        put article_path(article), params: { article: { title: 'test testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest testtest', content: 'updated content'}, format: :json }
        expect(response).to have_http_status(400)
      end
    end
  end

  describe 'DELETE #destroy' do
    context 'with valid params' do
      it 'returns an processable entity response' do
        article = FactoryBot.create(:article, :title => 'test', :content => 'test content')
        delete article_path(article)
        expect(response).to have_http_status(200)
      end
    end
  end
end
