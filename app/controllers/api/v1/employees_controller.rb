class Api::V1::EmployeesController < Api::V1::ApiController
  before_action :set_employee, only: [:show, :update, :destroy]

  # ActiveRecordのレコードが見つからなければ404 not foundを応答する
  rescue_from ActiveRecord::RecordNotFound do |_exception|
    render json: { error: '404 not found' }, status: :not_found
  end

  def index
    employees = Employee.select(:id, :name, :department, :gender)
    render json: employees
  end

  def show
    render json: @employee
  end

  def create
    employee = Employee.new(employee_param)
    if employee.save
      render json: employee, status: :created
    else
      render json: { errors: employee.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    @employee.destroy!
    head :no_content
  end

  def update
    if @employee.update(employee_params)
      head :no_content
    else
      render json: { errors: @employee.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_param
    params.fetch(:employee, {})
          .permit(
            :name,
            :department,
            :gender,
            :birth,
            :joined_date,
            :payment,
            :note
          )
  end
end
