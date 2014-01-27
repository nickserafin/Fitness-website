class ServicesController < ApplicationController
	http_basic_authenticate_with :name=>"nserafin", :password=>"yoyoyo123@"
	
	def personal1
	end
	
	def nutrition1
	end
end

