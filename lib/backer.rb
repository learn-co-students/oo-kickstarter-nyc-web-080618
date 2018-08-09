require 'pry'
class Backer
  attr_accessor :name
  def initialize(name)
    @name = name
    @backed_project_array = []
  end

  def back_project(project)

    if !@backed_project_array.include?(project)
      @backed_project_array << project
      project.add_backer(self)
    end
  end

  def backed_projects
    @backed_project_array
  end




end #ending class
