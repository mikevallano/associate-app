class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def college
    college = "#{name}'s mom goes to college"
  end


  def self.smethod
    User.where("name LIKE ?", "%#{'S'}%")
  end


end
