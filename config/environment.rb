require 'bundler'
Bundler.require

module Concerns
  module Findable
    def find_by_name(name)
      self.all.find do |thing|
        thing.name == name
      end
    end

    def find_or_create_by_name(name)
      if self.find_by_name(name) != nil
        self.find_by_name(name)
      else
        self.create(name)
      end
    end
  end
end

require_all 'lib'
