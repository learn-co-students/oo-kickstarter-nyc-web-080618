require "pry"

class Project
  attr_accessor :backers, :title
  attr_reader

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(backer)
    @backers << backer
    # binding.pry
    backer.backed_projects << self
  end
end
