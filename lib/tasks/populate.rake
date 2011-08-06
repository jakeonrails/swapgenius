namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do

    Rake::Task['db:reset'].invoke

    User.transaction do

      User.create!(:email => "user@example.com",
                   :password => "foobar",
                   :password_confirmation => "foobar")

      99.times do |n|
        name      = Faker::Name.name
        email     = "example-#{n+1}@railstutorial.org"
        password  = "password"
        User.create!(:email => email,
                     :password => password,
                     :password_confirmation => password)
      end
    end

    Category.transaction do
      100.times do |n|
        name        = %w(Alpha Beta Delta Gamma).sample + n.to_s
        description = Faker::Lorem.paragraphs(1)
        Category.create!(:name => name,
                         :description => description.first)
      end
    end

    Need.transaction do
      100.times do |n|
        title       = Faker::Lorem.sentence(5)
        description = Faker::Lorem.paragraphs(2)
        Need.create!(:title => title,
                     :description => description.join("\n"),
                     :user_id => rand(100),
                     :category_id => rand(100))
      end
    end

  end
end

