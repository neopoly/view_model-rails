# ViewModels::Rails

Rails engine providing view models.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'view_models-rails', :git => 'gitlab@gitlab.neopoly.de:neopoly/view_models-rails.git'
```

And then execute:

    $ bundle

## Usage

Generate a base class for your view models with

    $ rake view_models:setup

### Generator
Create files and tests...

Example 'RegisterForm':
```ruby
rails g view_model RegisterForm
```
