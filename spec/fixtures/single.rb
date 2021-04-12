require 'aasm'

class Single
  include AASM

  aasm do
    state :draft, default: true
    state :published

    event :publish do
      transitions from: :draft, to: :published
    end
  end
end