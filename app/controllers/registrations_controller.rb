# encoding: utf-8

class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
	super
	RestClient.post(
		"http://sms.ru/sms/send", 
		:api_id => "5F49DE4A-1D74-D8EA-64ED-A734E0799D07", 
		:to => @user.phone, 
		:text => "Ваш ID на велопробег #{@user.id}, пароль #{@user.more}"
		)
  end

  protected

    def after_sign_up_path_for(resource)
    	"/users/#{current_user.id}"
    end



end