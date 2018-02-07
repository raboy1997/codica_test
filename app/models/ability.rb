class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Book if user.role == 'book_moderator'
    if user.role == 'category_moderator'
      can :manage, Book
      can :manage, Category
    end

    can :manage, :all if user.role == 'admin'
  end
end
