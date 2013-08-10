class CompaniesController < ApplicationController
  
  def new
    
    @company = current_user.companies.create
    #@company = Company.create
    
  end
  
  def create
    # to be defined
    
    @company = current_user.companies.create(company_params)
    
    if @company.save
      flash[:success] = "#{@company.name} created successfully."
      redirect_to user_company_path(id: @company.id)
    else
      render 'new'
    end
  end
  
  def show
    @company = current_user.companies.find_by(id: params[:id])
  end
  
  def edit
    # to be defined
  end
  
  def update
    # to be defined
  end
    
  def destroy
    # to be created
  end
  
   private
  
  def company_params 
    params.require(:company).permit(:name, :user_id)
  end
end
