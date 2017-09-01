module SwellThemeMazel

	class << self

	end

	# this function maps the vars from your app into your engine
	def self.configure( &block )


		yield self
	end


  class Engine < ::Rails::Engine
    isolate_namespace SwellThemeMazel

		initializer "app_theme.assets.precompile" do |app|
			app.config.assets.precompile += %w( app_theme/*.gif app_theme/*.png app_theme/*.jpg app_theme/theme/img/*.gif app_theme/theme/img/*.png app_theme/theme/img/*.jpg )
		end

  end
end
