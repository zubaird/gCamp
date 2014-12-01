class StaticController < ApplicationController

  require './lib/assets/faq.rb'

  def home
    @quotes = [
  [
  "'Failure is not an option. Everyone has to Succeed'",
  "'Your time is limited, so don't waste it living someone else's life.'",
  "'Better Ingredients, Better Pizza'",
  ],
  [
  " - Arnold Schwarzenegger",
  " - Steve Jobs",
  " - Papa John",
  ]
]
  end

  def terms

  end

  def about

  end

  def faq
      @faq_class = Faq.new
  end


end
