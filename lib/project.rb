class Project

  attr_reader :title, :backers

  def initialize(titleIn)
    @title = titleIn
    @backers = []
  end

  def add_backer(backer)
    if !(backers.include?(backer))
      self.backers << backer
      backer.back_project(self)
    end
  end
end
