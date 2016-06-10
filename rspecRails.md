![home](image/Rspec.jpg)
# RSPEC Rails

[home](../index.md) [rspec](rspec01.md) [Capybara](capybara.md) [factory Girl](factoryGirl.md) [ruby](ruby01.md) [rails](rails11.md)

## Install Gem
    group :development, :test do
    gem 'rspec-rails', '~> 3.0'

### Bundle Install
    bundle install

### Initialize RSPEC
    rails generate rspec:install

## Data base
    cd /opt/lampp
    su
    ./lampp start

      #create the databases
      database: blogRspec_development
      database: blogRspec_test

## edit database.yml
      *Add Credentials*
      socket: /opt/lampp/var/mysql/mysql.sock

## Generate a Model
    rails generate model post title:string body:text
    rake db:migrate


## Edit Spec

### spec/post_spec.rb

    require 'rails_helper'

    RSpec.describe Post, type: :model do
      before(:all)do
        @post = Post.new(body: 'My Body', title: 'My Title')
      end
      it 'should have a matching body' do
        expect(@post.body).to eq('My Body')
      end

      it 'should have a matching title' do
        expect(@post.title).to eq('My Title')
      end

    end

# run Tests