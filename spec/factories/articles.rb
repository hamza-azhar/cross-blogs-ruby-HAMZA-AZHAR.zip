FactoryBot.define do
	factory :article do
		sequence(:title) { |n| "Test Article #{n}" }
		content 'Hello world!'
		sequence(:email) { |n| "testuser#{n}@crossover.com" }
		published true
	end
end