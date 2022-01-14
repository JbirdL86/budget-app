module GroupsHelper
  def total_amount(activities)
    total_amount = 0
    activities.each do |activity|
      total_amount += activity.amount
    end
    total_amount
  end
end
