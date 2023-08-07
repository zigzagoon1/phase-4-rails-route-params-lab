class StudentsController < ApplicationController

  def index
    students = []
    students << Student.find_by(last_name: params[:name].capitalize())
    students << Student.find_by(first_name: params[:name].capitalize())
    byebug
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
