class MainController < ApplicationController

	def index
		@comments = Comment.limit(3)
		@covers = Cover.limit(3)
		@notices = Notice.limit(3)
		@whoWeAre = InfoText.find_by(title: "Quienes somos")
		@academicOffers = InfoText.find_by(title: "Ofertas academicas")
		@liveTheExperience = InfoText.find_by(title: "Vive la experiencia")
		@courses = Course.all
	end

end
