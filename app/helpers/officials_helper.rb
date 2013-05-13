module OfficialsHelper

	def resource_name2
    	:official
  	end
	 
	def resource2
	    @resource ||= User.new
	end
 
	def devise_mapping2
	    @devise_mapping ||= Devise.mappings[:official]
	end

end
