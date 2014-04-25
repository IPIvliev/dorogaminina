# encoding: utf-8

class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
	super
	RestClient.post(
		"http://sms.ru/sms/send", 
		:api_id => "9d3359eb-9224-2384-5d06-1118975a2cd2", 
		:to => @user.phone, 
		:text => "Ваш ID на велопробег #{@user.id}, пароль #{@user.more}"
		)
  end

  protected

    def after_sign_up_path_for(resource)
    	"/users/#{current_user.id}"
    end



end