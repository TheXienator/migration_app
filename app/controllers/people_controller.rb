class PeopleController < ApplicationController
	before_action :get_person, only: [:show, :edit, :update, :destroy]

	def create
		person = Person.new(first_name: params[:person][:first_name], last_name: params[:person][:last_name])
		person.save!

		redirect_to people_path
	end

	def new
		@person = Person.new
	end

	def destroy
		@person = Person.find(params[:id])
		@person.destroy!

		redirect_to people_path
	end

	def index
		@people = Person.all
	end

	def edit
		@person = Person.find(params[:id])
	end

	def show
		@person = Person.find(params[:id])
	end

	def update
		@person = Person.find(params[:id])
		@person.update(person_params)
		@person.save!
		
		redirect_to person_path(@person.id)
	end


	private 
		def person_params
			params.require(:person).permit(:first_name, :last_name)
		end

		def get_person
			@person = Person.find(params[:id])
		end
end
