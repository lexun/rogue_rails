class Story < ActiveRecord::Base
  belongs_to :project
  validates_presence_of :project
	validates :in_order_to, :presence => true
	validates :as_a, :presence => true
	validates :i_want_to, :presence => true
	validates :value, :numericality => {:in => 0..5}, :allow_nil => true
  validates :position, :presence => true

  before_save :default_values
  
  def default_values
    self.status ||= "Not Started"
  end

  def score
    (complexity - 6).abs + value - 1
  end
end
