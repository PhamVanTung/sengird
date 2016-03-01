class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    title = @email.subject
    body = @email.body

    Post.create!({ body: body, email: title })
  end
end
