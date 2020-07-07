class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def after_sign_in_path_for(resource)
    case resource
    when Owner
      owner_salons_path
    when User
      user_salons_path
    end
  	end

  	def after_sign_out_path_for(resource)
    case resource
    when :owner
      root_path
    when :user
      root_path
    end
  	end

	def configure_permitted_parameters
		if resource_class == User
   			devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:kana_name,:email,:phone_number])
   			devise_parameter_sanitizer.permit(:sign_in,keys:[:email])
   			devise_parameter_sanitizer.permit(:account_update,keys:[:name,:kana_name,:email,:phone_number])
		elsif resource_class == Owner
			  devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
   			devise_parameter_sanitizer.permit(:sign_in,keys:[:email])
   			devise_parameter_sanitizer.permit(:account_update,keys:[:name,:email])
    	else
    		super
    	end
   end
end
