class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    
    user ||= User.new # guest user

    # if a member, they can manage their own posts 
    # (or create new ones)
      can :manage, :all
  end
end
