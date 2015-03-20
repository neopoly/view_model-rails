[github]: https://github.com/neopoly/view_model-rails
[doc]: http://rubydoc.info/github/neopoly/view_model-rails/master/file/README.md
[gem]: https://rubygems.org/gems/view_model-rails
[travis-badge]: https://img.shields.io/travis/neopoly/view_model-rails.svg?branch=master
[codeclimate]: https://codeclimate.com/github/neopoly/view_model-rails
[inchpages]: https://inch-ci.org/github/neopoly/view_model-rails

# ViewModel::Rails

[![Gem Version](https://img.shields.io/gem/v/view_model-rails.svg)][gem]
[![Code Climate](https://img.shields.io/codeclimate/github/neopoly/view_model-rails.svg)][codeclimate]
[![Test Coverage](https://codeclimate.com/github/neopoly/view_model-rails/badges/coverage.svg)][codeclimate]
[![Inline docs](https://inch-ci.org/github/neopoly/view_model-rails.svg?branch=master&style=flat)][inchpages]

[Gem][gem] |
[Source][github] |
[Documentation][doc]

Rails engine providing view models.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'view_model-rails'
```

And then execute:

    $ bundle

## Usage

Generate a base class for your view models with

    $ rake view_model:setup

### Generator
Create files and tests...

Example 'RegisterForm':

```ruby
rails g view_model RegisterForm
```
