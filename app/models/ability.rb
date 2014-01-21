class Ability
  include CanCan::Ability

  def initialize(user)
    
    user ||= User.new # guest user

    # if a member, they can manage their own todos 
    # (or create new ones)
      can :manage, :all
  end
end
