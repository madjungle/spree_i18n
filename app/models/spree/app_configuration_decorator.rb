Spree::AppConfiguration.class_eval do
  preference :all_locales, :array, :default => ['en', 'es', 'de']
  preference :supported_locales, :array, :default => ['en']
end
