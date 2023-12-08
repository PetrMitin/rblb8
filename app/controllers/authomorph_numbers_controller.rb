require_relative '../helpers/authomorph_numbers_helper.rb'

class AuthomorphNumbersController < ApplicationController
  include AuthomorphNumbersHelper
  def input
  end

  def view
    n = params[:n].to_i
    if n <= 0
      @error = 'N <= 0'
    end
    @results = ((1..n).select { |i| authomorph_number?(i) }).to_a
  end
end
