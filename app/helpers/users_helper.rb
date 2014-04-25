# encoding: utf-8

module UsersHelper

	def vznosstatus(paid)
		case paid
			when 0
				return "<strong class='red'>Не внесён</strong>".html_safe
			when 1
				return "<strong class='yellow'>Отправлен на оплату</strong>".html_safe
			when 2
				return "<strong class='green_pay'>Оплачен</strong>".html_safe
		end
	end
end
