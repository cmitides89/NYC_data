module OfficialsHelper

	def resource_name
    	:offical
  	end
	 
	def resource
	    @resource ||= User.new
	end
 
	def devise_mapping
	    @devise_mapping ||= Devise.mappings[:official]
	end

end
