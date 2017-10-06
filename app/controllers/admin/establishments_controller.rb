class Admin::EstablishmentsController < AdminController
	def index
		@establishments = Establishment.all
	end

	def new
		@establishment = Establishment.new
	end

	def create
		@establishment = Establishment.new(establishments_params)

		if @establishment.save
			upload_picture
			redirect_to establishments_path
		else
			render 'new'
		end
	end

	def destroy
		@establishment = Establishment.destroy(params[:id])

		redirect_to admin_establishments_path
	end

	def edit
		@establishment = Establishment.find(params[:id])
	end

	def update
		@establishment = Establishment.find(params[:id])

		if @establishment.update(establishments_params)
			upload_picture
			
			redirect_to admin_establishments_path
		else
			render 'edit'
		end
	end

	private
	
	def upload_picture
		uploaded_file = params[:establishment][:image]
			unless uploaded_file.nil?
				new_file_path = Rails.root.join('public', 'uploads', 'establishments', @establishment.id.to_s)

				File.open(new_file_path, 'wb') do |file|
					file.write uploaded_file.read
				end
			end
	end

	def establishments_params
		params.require(:establishment).permit(:title, :description)
	end
end
