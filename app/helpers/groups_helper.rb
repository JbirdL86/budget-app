module GroupsHelper
  def total_amount(activities)
    total_amount = 0
    activities.each do |activity|
      total_amount += activity.amount
    end
    total_amount
  end

  def group_icon(group)
    "https://eu.ui-avatars.com/api/?name=#{group.icon}"
  end
end
