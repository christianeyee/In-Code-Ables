class StaticController < ApplicationController
  def index
    @research = Research.next
    @categories = Category.all
  end
  
end
