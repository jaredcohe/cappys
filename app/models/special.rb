class Special < ActiveRecord::Base
  
  @@special_types = %w[Mailers Other]
  cattr_reader :special_types
  attr_accessible :special_type, :title, :image
  
  has_attached_file :image #, :styles => { :small => "150x150>" } this needs imagemagick to work correctly

end
