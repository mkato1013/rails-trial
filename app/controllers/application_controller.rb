class ApplicationController < ActionController::Base

  # サインイン後遷移先
  def after_sign_in_path_for(resource)
    root_path
  end

  # サインアウト後遷移先
  def after_sign_out_path_for(resource)
    root_path
  end
end
