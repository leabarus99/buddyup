class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!

    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def update?
    return true
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    return true
  end
end
