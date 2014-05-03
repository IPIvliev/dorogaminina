# encoding: utf-8

module ZvenosHelper

	def zveno_status(can)
		case can
		when false
			return "<span class='red'>Закрыто</span>".html_safe
		when true
			return "<span class='green_pay'>Открыто</span>".html_safe
		end
	end
end
