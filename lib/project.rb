class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end # end initialize

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end # end add_backer

end
