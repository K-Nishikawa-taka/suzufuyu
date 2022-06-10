class ApplicationController < ActionController::Base
  #devise機能を利用する場合、configure_permitted_parametersメソッドを呼ぶ。
  before_action :configure_permited_parameters, if: :devise_controller?
  
  #ログイン後の遷移先
  def after_sign_in_path_for(resource)
    ship_images_path
  end
  
  protected
  
  #sign_up時にnameカラムの入力を許可する
  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
  end
  
end
