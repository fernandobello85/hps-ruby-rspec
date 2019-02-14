# encoding: UTF-8
require 'spec_helper'
require_relative '../actionwords'

describe 'Descaling' do
  include Actionwords

  before(:each) do
    # Given I handle coffee grounds
    i_handle_coffee_grounds
    # And I handle water tank
    i_handle_water_tank
    # And I handle beans
    i_handle_beans
  end

  it "Descaling is needed after 500 coffees" do
    # Given the coffee machine is started
    the_coffee_machine_is_started
    # When I take "500" coffees
    i_take_coffee_number_coffees(500)
    # Then a nofification about decaling is displayed
    a_nofification_about_decaling_is_displayed
  end
end