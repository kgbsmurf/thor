class LbdPagesController < ApplicationController
  
#  def initialize
#    self.new.name = "New LBD Listing"
#  end
# 
      
  def new
    #flash.keep
     @company = Company.find_by(id: params[:company_id])
     
#    @lbd_page = @company.build_lbd_page
#       
    if @company.has_lbd_page?
      # lbd_page already exist - can only have one
      
      flash[:error] = "Already have LBD Page"
      redirect_to root_path
      
    else
      @lbd_page = @company.build_lbd_page
    end
#    
  end
  
  def create
#    debugger
    @company = Company.find_by(id: params[:company_id])
#    redirect_to root_path
    if @company.lbd_page
      # lbd_page already exist - can only have one
      #flash[:error] = "Already have LBD Page"
      redirect_to company_lbd_page_path(@company), error: "Already have LBD Page"
#      redirect_to root_path
    else
      # page does not exist - OK to create
      @lbd_page = @company.build_lbd_page(lbd_page_params)
      
      if @lbd_page.save
         flash[:success] = "#{@lbd_page.name} created successfully!"
         redirect_to company_lbd_page_path(@company)
      else
        #flash[:error] = 
        #flash.keep
        redirect_to 'new', error: "There was an error."
      end
     
    end
    
    
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def show
    @company = Company.find_by(id: params[:company_id])
    @lbd_page = @company.lbd_page
  end
  
  def destroy
    
  end
  
  
  #Additional Methods
  
 
  
  private
  
  def lbd_page_params
     
    params.require(:lbd_page).permit(:name, :description, :company_id)
  end
end
