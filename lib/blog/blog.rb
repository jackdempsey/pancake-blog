class Blog

  get "(/)", :_name => :home do
    v.blog_entries = stack_class::BlogEntry.all
    render :root
  end

  post "(/)" do
    blog_entry = stack_class::BlogEntry.new(params.blog_entry)
    blog_entry.save
    redirect url(:home)
  end
end

