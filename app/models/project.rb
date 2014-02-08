class Project < ActiveRecord::Base
  has_many :tasks
  validates :title,
            presence: {message: "Please Input something !!"},
            length:{minimum:3, message: "too short!!"}
end
