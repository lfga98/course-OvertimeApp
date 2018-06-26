100.times do |posts|
  Post.create(date: Date.today, rationale: "#{posts} rationale content")
end
puts "Created 100 posts"
