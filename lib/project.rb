class Project
  attr_accessor :title

  def initialize(title)
    @title = title
    @backer_array = []
  end

  def add_backer(backer)
  #  binding.pry
    if !@backer_array.include?(backer)
      @backer_array << backer
      backer.back_project(self)
    end
  end

  def backers
    @backer_array
  end
end #ending class
