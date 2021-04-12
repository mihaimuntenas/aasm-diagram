require_relative '../single.rb'

module Inherited
  class Single < ::Single
    aasm do
      state :archived

      event :archive do
        transitions from: :published, to: :archived
      end
    end
  end
end