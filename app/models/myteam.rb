class Myteam < ActiveRecord::Base
  validates :name,
            presence: {message: "Please Input something !!"},
            uniqueness: {message: "That name already exists !!"}

end
