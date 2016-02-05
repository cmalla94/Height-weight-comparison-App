class PeopleController < ApplicationController
  #Method index, main homepage
  def index
    @people = Person.all
  end

  #Method to show the profile
  def show
    @person = Person.find(params[:id])
  end

  #Method for displaying a new profile input area
  def new
    @person = Person.new
  end

  #Method to edit the profile
  def edit
    @person = Person.find(params[:id])
  end

  #Method for creating the profile
  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person
    else
      render 'new'
    end
  end

  #Method for updating the profile
  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to @person
    else
      render 'edit'
    end
  end

  #Method for deleting a profile
  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to people_path
  end

  private
    def person_params
      params.require(:person).permit(:name, :city, :country, :weight, :height)
    end
end
