class Team < ActiveRecord::Base

  validates :name,
            presence: {message: "Please Input something !!"},
            uniqueness: {message: "That name already exists !!"}
  def outfielders
    @outfielders || batters.collect{|p| p.id}
  end

  def outfielders(id_array)
    @outfielders = id_array.collect{|id| id.to_i};
  end
end
