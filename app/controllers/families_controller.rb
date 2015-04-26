class FamiliesController < ApplicationController
	def index
		@families = Family.all
	end

	def show
		@family = Family.find(params[:id])
	end

	def new
		@family = Family.new
	end

	def edit
		@family=Family.find(params[:id])
	end

	def create
		@family = Family.new(family_params)

		if @family.save
			redirect_to @family
		else
			render 'new'
		end
	end

	def update
		@family = Family.find(params[:id])

		if @family.update(family_params)
			redirect_to @family
		else
			render 'edit'
		end
	end

	def destroy
		@family = Family.find(params[:id])
		@family.destroy

		redirect_to families_path
	end
end

private
	def family_params
		params.require(:family).permit(:name, :picture)
	end

