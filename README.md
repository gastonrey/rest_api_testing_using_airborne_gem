# How to start

After cloning this project there some dependencies to be already have installed on your machine:
 
 * Ruby >= 2.0 (I would recommend to use RVM in order to get it done)
 * Bundler (gem install bundler)

With this already installed, go to the cloned repo folder and execute: 

  * `bundle install`

This will install all the necessary gems from Gemfile file.

# How to execute the tests

To execute the whole suite, and get a HTML report: 

 * `bundle exec rspec spec/ -f h > api_test_report.html`

 To execute just one of the folders, and get a HTML report: 

 * `bundle exec rspec spec/replace_param_specs/ -f h > api_test_report.html`

If you want to execute it with a document type report on console, change the `-f` option by: 

 * `bundle exec rspec spec/text_param_specs/add_some_empty_text_spec.rb  -f d`


