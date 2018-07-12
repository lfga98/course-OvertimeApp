FactoryBot.define do
  factory :post do
    date Date.today
    rationale "Some Rationale"
    user
    daily_hours 3.5
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    user
    daily_hours 7.5
  end
end
