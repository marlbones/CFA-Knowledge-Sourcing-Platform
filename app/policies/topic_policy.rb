class TopicPolicy
  attr_reader :user, :topic

  def initialize(user, topic)
    @user = user
    @topic = topic
  end

  def update?
    user.admin?
  end
end
