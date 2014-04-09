atom_feed do |feed|
  feed.title "Flowing Not-Only-Data demos"
  feed.updated @posts.first.updated_at

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title post.title
      entry.content post.body, :type => 'html'

      entry.author do |author|
        author.name 'Not-Only-Data'
      end
    end
  end
end