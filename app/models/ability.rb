class Ability < WikiPku::Ability
  def initialize(user)
    user ||= WikiPku::User.new # guest user
    super(user)
  end  
end