module SwellMedia
	class StaticController < ApplicationController
		layout "swell_media/pages"

		def home
			# the homepage

			@adventure_logs = SwellMedia::Article.published.order(publish_at: :desc)
			@adventure_logs = @adventure_logs.page(params[:page]).per(3)

			@articles = SwellMedia::Article.published.order(publish_at: :desc)
			@articles = @articles.page(params[:page]).per(3)

			render layout: 'swell_theme/onepage_general'
		end

	end
end
