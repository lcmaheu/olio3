# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
        )
    
end

puts "3 topics created"

10.times do |blog|
   Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Eat and than sleep on your face you call this cat food, 
            but meow go back to sleep owner brings food and water tries 
            to pet on head, so scratch get sprayed by water because bad cat, 
            annoy owner until he gives you food say meow repeatedly 
            until belly rubs, feels good but the dog smells 
            bad my slave human didn't give me any food so i 
            pooped on the floor and hiss at vacuum cleaner. 
            Friends are not food sniff other cat's 
            butt and hang jaw half open thereafter for lay 
            on arms while you're using the keyboard yet massacre 
            a bird in the living room and then look like the cutest 
            and most innocent animal on the planet.",
           topic_id: Topic.last.id
    )
    
end

puts "10 blog posts created"

5.times do |skill|
   Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15 
    ) 
end

puts "5 skills create"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}", 
        subtitle: "Ruby on Rails", 
        body: "The best Lorem Ipsum Generator in all the sea! Heave this scurvy copyfiller fer yar next adventure and cajol yar clients into walking the plank with ev'ry layout! Configure above, then get yer pirate ipsum...own the high seas, arg!", 
        main_image: "http://placehold.it/600x400", 
        thumb_image: "http://placehold.it/350x200"
        
    )
end
1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}", 
        subtitle: "Angular", 
        body: "The best Lorem Ipsum Generator in all the sea! Heave this scurvy copyfiller fer yar next adventure and cajol yar clients into walking the plank with ev'ry layout! Configure above, then get yer pirate ipsum...own the high seas, arg!", 
        main_image: "http://placehold.it/600x400", 
        thumb_image: "http://placehold.it/350x200"
        
    )
end

puts "9 portfolio items created"