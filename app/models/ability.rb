class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    # if user.admin?
    #   can :manage, :all
    # else
      # can :read, :all
      
      can :manage, [Charity] do |model|
        model.new_record? || model.user == user
      end

      can :manage, User do |model|
        model.new_record? || model == user
      end    
    # end
  end
end
