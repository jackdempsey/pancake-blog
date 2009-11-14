namespace :blog do
  namespace :db do
    desc "A simple way to get the blog_entries table created"
    task :bootstrap do
      ActiveRecord::Base.connection.instance_eval do
        create_table :blog_entries, :force => true do |t|
          t.column :title, :string
          t.column :body, :text
        end
      end
      BlogEntry.create(:title => "The World's First Pancake Blog Entry!", :body => "This really is cool stuff. Major props to hassox")
      BlogEntry.create(:title => "Are you Brendan Smith?", :body => "If so, you have inherited the sum of 10 million pounds!")
    end
  end
end

