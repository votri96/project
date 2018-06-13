class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new

    case user.role.name
    when "super admin"
      can :manage, :all
    when "publisher"
      can :read, Tin
      can :create, Tin
      can :update, Tin
    end
  end
end
