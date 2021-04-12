require_relative 'single'

class Multiple < ::Single
  aasm :countdown do
    state :five, default: true
    state :four, :three, :two, :one, :zero

    event :tick do
      transitions from: :five, to: :four
      transitions from: :four, to: :three
      transitions from: :three, to: :two
      transitions from: :two, to: :one
      transitions from: :one, to: :zero
    end

    event :reset do
      transitions to: :five
    end
  end
end