
module ResidentsHelper
	def resource_name
    :resident
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:resident]
  end



end
