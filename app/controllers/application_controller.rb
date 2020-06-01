class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:kana_name,:email,:postal_code,:address])
   devise_parameter_sanitizer.permit(:sign_in,keys:[:email])
   devise_parameter_sanitizer.permit(:account_update,keys:[:name,:kana_name,:email,:postal_code,:address])
    #sign_upの際にnameのデータ操作を許。追加したカラム。
   end
end
