=begin
#Polar Accesslink API

#Polar Accesslink API documentation

The version of the OpenAPI document: 3
Contact: b2bhelpdesk@polar.com
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PolarRb::AlertnessHourlyData
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PolarRb::AlertnessHourlyData do
  let(:instance) { PolarRb::AlertnessHourlyData.new }

  describe 'test an instance of AlertnessHourlyData' do
    it 'should create an instance of AlertnessHourlyData' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(PolarRb::AlertnessHourlyData)
    end
  end

  describe 'test attribute "validity"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["VALIDITY_UNKNOWN", "VALIDITY_RESET", "VALIDITY_NOT_VALID", "VALIDITY_ESTIMATE", "VALIDITY_VALID"])
      # validator.allowable_values.each do |value|
      #   expect { instance.validity = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "alertness_level"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ALERTNESS_LEVEL_UNKNOWN", "ALERTNESS_LEVEL_MINIMAL", "ALERTNESS_LEVEL_VERY_LOW", "ALERTNESS_LEVEL_LOW", "ALERTNESS_LEVEL_HIGH", "ALERTNESS_LEVEL_VERY_HIGH"])
      # validator.allowable_values.each do |value|
      #   expect { instance.alertness_level = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "start_time"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "end_time"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
