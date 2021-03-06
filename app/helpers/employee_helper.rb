module EmployeeHelper
	def emp_avatar_path(employee)
		avatar = "uploads/attachment/emp_#{employee.id}/avatar.png"
		if File.exist? Rails.root.join('public', avatar)
			"/#{avatar}"
		else
			"http://placehold.it/120&text=#{employee.name}"
		end
	end
end
