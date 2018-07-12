FactoryBot.define do
  factory :post do
    date Date.today
    work_performed "Some work_performed"
    user
    daily_hours 3.5
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    work_performed "Some more content"
    user
    daily_hours 7.5
  end
end
