class Ability
  include CanCan::Ability

  #def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    
   # user ||= User.new # guest user

    # if a member, they can manage their own posts 
    # (or create new ones

    #if user.member?
     # can :manage, :all
    #else
    #  can :read, :all
    #end

     #ROLES = %w[member moderator admin]
    #def role?(base_role)
    #  role.nil? ? false : ROLES.index(base_role.to_s) <= ROLES.index(role)
   # end
#
   # private

    #def set_member
   #   self.role = 'member'
    #end
  #end
end
