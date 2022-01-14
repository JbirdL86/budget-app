# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present? # additional permissions for logged in users

    can :manage, Group, user_id: user.id
    can :manage, Activity, author_id: user.id
  end
end
