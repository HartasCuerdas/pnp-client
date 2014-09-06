#require "i18n/backend/fallbacks" 
#I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)

I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
I18n.default_locale = :en
#I18n.fallbacks =[:es, :en]

LANGUAGES = [
  ['English', 'en'],
  ["Espa&ntilde;ol".html_safe, 'es']
]
