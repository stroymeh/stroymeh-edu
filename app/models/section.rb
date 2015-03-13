class Section < ActiveRecord::Base
  has_many :pages, :dependent => :destroy

  validates_presence_of :title, :description
end
