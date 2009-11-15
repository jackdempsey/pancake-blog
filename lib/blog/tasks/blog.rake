namespace :blog do
  namespace :db do
    desc "A simple way to get the blog_entries table created"
    task :bootstrap do
      DataMapper.auto_migrate!
      Blog::BlogEntry.create(:title => "The World's First Pancake Blog Entry!", :body => "This really is cool stuff. Major props to hassox")
      Blog::BlogEntry.create(:title => "Are you Brendan Smith?", :body => "If so, you have inherited the sum of 10 million pounds!")
    end
  end
end

