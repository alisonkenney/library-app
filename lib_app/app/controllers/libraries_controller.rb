class LibrariesController < ApplicationController

	def index
    	@libraries = Library.all
  	end

  	def new
  		@library = Library.new
  	end

  	def create
    	library_params = params.require(:library).permit(:name, :floor_count, :floor_area)
    	@library = Library.create(library_params)

    	redirect_to "/libraries"
  	end

  	def show
    	@library = Library.find(params[:id])
 	end

 	def edit
		@library = Library.find(params[:id])
	end

	def update
		library = Library.find_by_id params[:id]
		library_params = params.require(:library).permit(:name, :floor_count, :floor_area)
		library.update_attributes(library_params)
		redirect_to library_path(library)
	end

	def destroy
		library = Library.find_by_id params[:id]
		library.destroy
		redirect_to libraries_path
	end

end
