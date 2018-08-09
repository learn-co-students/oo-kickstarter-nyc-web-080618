require "pry"

class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name

  end

  def back_project(proj)
    @backed_projects << proj
    # binding.pry
    proj.backers << self
  end
end
