# encoding: utf-8

module ZvenosHelper

	def zveno_status(can)
		case can
		when false
			return "Закрыто"
		when true
			return "Открыто"
		end
	end
end
