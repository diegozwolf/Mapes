Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], {:scope => 'email', info_fields: 'name, email', :client_options => {:ssl => {:verify => false}}}

  # Por si la conexión con la app de facebook falla.
  on_failure { |env| WelcomeController.action(:connect).call(env) }
end