class StaticPagesController < ApplicationController
  def home
    @result = (1..6).to_a.shuffle.first
  end

  def help
  end

  def about
  end

  def roll
     @result = (0..100).to_a.shuffle.first
  end
end
