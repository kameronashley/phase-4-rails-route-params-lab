class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    specific_students = Student.find_by(id: params[:id])
    render json: specific_students
  end

end
