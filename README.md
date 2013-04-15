#Spree Internationalization

This is the Internationalization project for [Spree Commerce](http://spreecommerce.com/)

See the [official Internationalization documentation](http://guides.spreecommerce.com/i18n.html) for more details.

To install, simply add the Gem to your Gemfile:

1. Add the following to your Gemfile
<pre>
  gem 'spree_i18n', :git => 'git://github.com/spree/spree_i18n.git'
</pre>

2. Run `bundle install`

## Spree Products Translations

We've been adding a product translations feature. Follow the steps to see it working.

Point to the content branch. And add the globalize3 gem to you Gemfile

    gem 'spree_i18n', :git => 'git://github.com/spree/spree_i18n.git', :branch => 'content'
    gem 'globalize3'

Install and run the migration to create the product translations table:

    bundle exec rake railties:install:migrations
    bundle exec rake db:migrate

Add the following line to admin/all.js on your app:

    //= require admin/spree\_i18n

Go to admin products list and click on any product. You should see a TRANSLATIONS link
in the products subtabs on the right. You should be able to set name, description,
meta descriptions, and meta keywords for any product on your Spree project.

## Running the tests 

If you would like to run the tests of this project, follow these steps:

1. Clone this repo using `git clone git://github.com/spree/spree_i18n`
2. Change into the directory and run `bundle exec rake test_app` to generate a dummy application.
3. Run `bundle exec rspec spec` to run the tests.
