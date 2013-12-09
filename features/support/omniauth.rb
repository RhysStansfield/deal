Before('@omniauth_test') do
  OmniAuth.config.test_mode = true
end
 
After('@omniauth_test') do
  OmniAuth.config.test_mode = false
end