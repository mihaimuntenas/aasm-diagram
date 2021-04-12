require_relative '../multiple'

module Inherited
  class Multiple < ::Multiple
    aasm do
      state :archived
      
      event :archive do
        transitions from: :published, to: :archived
      end
    end

    aasm :countup do
      state :zero, default: true
      state :five, :four, :three, :two, :one

      event :tick do
        transitions from: :zero, to: :one
        transitions from: :one, to: :two
        transitions from: :two, to: :three
        transitions from: :three, to: :four
        transitions from: :four, to: :five
      end

      event :reset do
        transitions to: :zero
      end
    end
  end
end