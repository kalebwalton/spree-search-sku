require 'spec_helper'
#require 'cancan/matchers'

describe Spree::Search::Sku do
  let(:search_params) { { :keywords => "HGF-00016" } }
  let(:searcher) { Spree::Config.searcher_class.new(search_params) }
  it "should find match" do
    searcher.retrieve_products.should have(1).items
  end
  
#  shared_examples_for "access granted" do
#    it "should allow read" do
#      ability.should be_able_to(:read, resource, token) if token
#      ability.should be_able_to(:read, resource) unless token
#    end
#    it "should allow create" do
#      ability.should be_able_to(:create, resource, token) if token
#      ability.should be_able_to(:create, resource) unless token
#    end
#    it "should allow update" do
#      ability.should be_able_to(:update, resource, token) if token
#      ability.should be_able_to(:update, resource) unless token
#    end
#  end
#
#  shared_examples_for "create only" do
#    it "should allow create" do
#      ability.should be_able_to(:create, resource, token) if token
#      ability.should be_able_to(:create, resource) unless token
#    end
#    it "should not allow read" do
#      ability.should_not be_able_to(:read, resource, token) if token
#      ability.should_not be_able_to(:read, resource) unless token
#    end
#    it "should not allow update" do
#      ability.should_not be_able_to(:update, resource, token) if token
#      ability.should_not be_able_to(:update, resource) unless token
#    end
#    it "should not allow index" do
#      ability.should_not be_able_to(:index, resource, token) if token
#      ability.should_not be_able_to(:index, resource) unless token
#    end
#  end
#
#  shared_examples_for "no index allowed" do
#    it "should not allow index" do
#      ability.should_not be_able_to(:index, resource, token) if token
#      ability.should_not be_able_to(:index, resource) unless token
#    end
#  end
#
#  let(:user) { User.new }
#  let(:ability) { Ability.new(user) }
#  let(:token) { nil }
#
#  context "for User" do
#    context "requested by same user" do
#      let(:resource) { user }
#      it_should_behave_like "access granted"
#      it_should_behave_like "no index allowed"
#    end
#    context "requested by other user" do
#      let(:resource) { User.new }
#      it_should_behave_like "create only"
#    end
#    context "requested with proper token" do
#      let(:token) { "TOKEN123" }
#      let(:resource) { user }
#      before(:each) { user.stub :token => "TOKEN123" }
#      it_should_behave_like "access granted"
#      it_should_behave_like "no index allowed"
#    end
#    context "requested with inproper token" do
#      let(:token) { "FAIL" }
#      let(:resource) { User.new }
#      before(:each) { user.stub :token => "TOKEN125" }
#      it_should_behave_like "create only"
#    end
#  end

end
