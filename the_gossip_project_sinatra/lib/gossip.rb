require "csv"
require "pry"

class Gossip

  attr_accessor :author, :content, :gossips

  def initialize(author, content)
    @content = content
    @author = author
    @gossips = gossips

  end



  def save

    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end

  end

  def self.all
  all_gossips = []
  CSV.read("./db/gossip.csv").each do |csv_line|
    all_gossips << Gossip.new(csv_line[0], csv_line[1])
  end
  return all_gossips
end

def index_gossip
  all_gossips.each do |gossip|
    puts "#{gossip}"
  end

end

def self.find(id)
  puts self.all[id]

 end


# binding.pry

end
