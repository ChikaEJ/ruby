class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)

    if user.admin?
      can :manage, :all
    elsif user.user?
      can :edit, Notice, :user_id => user.id
      can :read, Notice
      can [:new, :create], Notice
      can :destroy, Notice, :user_id => user.id
      can :read, Category
    else
      can :read, Notice
      can :read, Category
    end


  end
end
