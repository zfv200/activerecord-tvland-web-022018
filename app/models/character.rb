class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(show)
    new_show = Show.new(show)
    self.show = new_show
  end

  def build_network
    self.build_show(show)
  end
end
