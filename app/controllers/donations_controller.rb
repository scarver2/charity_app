class DonationsController < InheritedResources::Base
  
  private
  
  def permitted_params
    params.require(:donation).permit(:charity_id, :user_id, :amount, :recurring, :frequency)
  end
end
