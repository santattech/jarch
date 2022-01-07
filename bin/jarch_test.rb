require 'rspec'
require_relative "../spec/factorial_spec"
require_relative "../spec/third_party_spec"

RSpec::Core::Runner.run(['spec'])