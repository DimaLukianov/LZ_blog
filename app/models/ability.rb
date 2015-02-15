class Ability
   include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user (not logged in)'
	can :read, :all
	else
    if user.role? :administrator
        can :manage, :all
else
    if user.role? :''
        
end
        
    end
  end
end
