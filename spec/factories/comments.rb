FactoryBot.define do
	factory :comment do
		article
		sequence(:title) { |n| "Comment #{n}" }
		sequence(:content) { |n| "Hello world! #{n}" }
		sequence(:email) { |n| "testuser#{n}@crossover.com" }
	end
end