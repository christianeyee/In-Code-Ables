class SearchController < ApplicationController
	def search
	  if params[:q].nil?
    	@researches = []
  	  else
      	@researches = Research.search params[:q]
      end
  end
end
