class Backer

  attr_accessor :name, :backed_projects

  def initialize(nameIn)
    @name = nameIn
    @backed_projects = []
  end

  def back_project(project)
    if !(backed_projects.include?(project))
      self.backed_projects << project
      project.add_backer(self)
    end
  end
end
