class Person
  include Mongoid::Document
  # load 'address.rb'
  field :first_name, as: :fname,type: String, default: "Stephen"
  field :last_name, type: String, default: "Hawkings"
  field :email, type: String, default: "XYZ@example.com"
  field :notes, type: String, default: "what's in your mind"
  field :address, type: Address, default: ""

  # def first_name
  # 	"my name is jay1995"
  # end

  # def first_name=(value)
  # 	p 'Setting..'
  # 	self.first_name = value
  # 	p 'done..'
  # end
end
