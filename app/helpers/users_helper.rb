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
				return "пл. Минина - ТЦ Индиго".html_safe
			when 2
				return "Щербинки-2 - ост. Дворец Спорта".html_safe
			when 3
				return "ст.м. Заречнная (Нижний Новгород) - ТЦ Окей (пр. Ленина, 113)".html_safe
			when 4
				return "Парк Культуры".html_safe
		end
	end	

	def tshirtview(index)
		case index
			when 1
				return "Стандартная футболка с логотипом <br><img src='/images/tshirts/1.jpg'>".html_safe
			when 2
				return "Небываемое бывает. Пётр I <br><img src='/images/tshirts/2.jpg'>".html_safe
			when 3
				return "Зло тихо летать не может. Пётр I <br><img src='/images/tshirts/3.jpg'>".html_safe
			when 4
				return "Где раз поднят русский флаг, там он спускаться уже не может. Николай I <br><img src='/images/tshirts/4.jpg'>".html_safe
			when 5
				return "Европа подождёт, пока русский царь рыбачит. Александр III <br><br><img src='/images/tshirts/5.jpg'>".html_safe
			when 6
				return "У России есть только два союзника: её армия и флот. Александр III <br><img src='/images/tshirts/6.jpg'>".html_safe
			when 7
				return "Не зло победит зло, а только любовь. Николай II <br><img src='/images/tshirts/7.jpg'>".html_safe
			when 8
				return "Медведь своей тайги никому не отдаст. В.В.Путин <br><img src='/images/tshirts/8.jpg'>".html_safe
		end
	end	

end
