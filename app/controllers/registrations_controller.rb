# encoding: utf-8

class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
	super
	RestClient.post(
		"http://sms.ru/sms/send", 
		:api_id => "0FB7E9F9-C603-1E11-9C97-4D427CB43F09", 
		:to => @user.phone, 
		:text => "Ваш ID на велопробег #{@user.id}, пароль #{@user.more}"
		)
  end

  protected

    def after_sign_up_path_for(resource)
    	"/users/#{current_user.id}"
    end



end
