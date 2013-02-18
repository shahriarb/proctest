namespace :proc do
	task :write, [:text_to_write] => [:environment] do |t, arg|
		arg.with_defaults :text_to_write => " No Args"
		File.open("test/output", "w") { |file| file.write arg[:text_to_write] }
	end
end

