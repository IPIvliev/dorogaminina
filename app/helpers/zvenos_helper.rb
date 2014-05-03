# encoding: utf-8

module ZvenosHelper

	def zveno_status(can)
		case can
		when false
			return "<span class='red'>Закрыто</span>"
		when true
			return "<span class='green'>Открыто</span>"
		end
	end
end
