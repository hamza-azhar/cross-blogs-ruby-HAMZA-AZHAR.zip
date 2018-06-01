RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    # Test factories in spec/factories are working.
    FactoryBot.lint
  end

end