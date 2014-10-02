Searchkick Boost Failing
========================

This repository is an example Rails app running with the following setup:

* Ruby 2.1.3
* Rails 4.1.6
* Searchkick 0.8.3

## Installation

* Clone this repository
* Run `bundle install`
* Run `rake db:migrate`
* Run `rails s`
* Visit `http://localhost:3000` and see the elasticsearch error

## References

* https://github.com/ankane/searchkick/issues/260

## Solution

For those who are getting the `java.lang.ClassCastException`: the `boost_by` option only works with number types, and not strings. Check out the elasticsearch [Function Score Query](http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/query-dsl-function-score-query.html) docs for more info.
