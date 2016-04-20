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

	def dostavka(tochka)
		case tochka
			when 0
				return "Без доставки".html_safe
			when 1
				return "Московский вокзал".html_safe
			when 2
				return "Индиго Лайф".html_safe
			when 3
				return "Щербинки 2".html_safe
			when 4
				return "Парк Культуры".html_safe
		end
	end	
end
