class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	# 登録、ログイン、編集可能なkeyを指定
	def configure_permitted_parameters
		if resource_class == User
   			devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:kana_name,:email,:postal_code,:address])
   			devise_parameter_sanitizer.permit(:sign_in,keys:[:email])
   			devise_parameter_sanitizer.permit(:account_update,keys:[:name,:kana_name,:email,:postal_code,:address])
		elsif resource_class == Salon
			devise_parameter_sanitizer.permit(:sign_up, keys: [:salon_name,:name,:kana_name,:email,:postal_code,:address])
   			devise_parameter_sanitizer.permit(:sign_in,keys:[:email])
   			devise_parameter_sanitizer.permit(:account_update,keys:[:salon_name,:name,:kana_name,:email,:postal_code,:address])
    	else
    		super
    	end
   end
end
