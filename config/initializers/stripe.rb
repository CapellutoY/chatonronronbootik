Dotenv.load
Rails.configuration.stripe = {
  :publishable_key => ENV['Stripe_publishable_key'],
  :secret_key      => ENV['Stripe_secret_key']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
