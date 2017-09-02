require 'state_machine'
class Task < ApplicationRecord
  state_machine :status, initial: :new do

    after_transition on: :pending do |object|
      if object.check_forbiden_items
        object.pending
      else
        object.cancel_reason = "Forbiden item"
        object.cancel
      end
    end
    before_transition on: :canceled do |object|
      object.cancel_reason = 'Canceled by Admin'
    end


    event :pending do
      transition new: :pending
    end
    event :in_progress do
      transition pending: :in_progress
    end
    event :complete do
      transition in_progress: :complete
    end
    event :cancel do
      transition pending: :canceled
    end
    event :canceled do
      transition pending: :canceled
    end
  end

  def check_forbiden_items
    unless ['kniff', 'gun', 'ttt'].include?(self.title)
      return true
    else
      return false

    end
  end
end
