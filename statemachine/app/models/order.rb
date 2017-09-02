require 'state_machine'
class Order < ApplicationRecord
  state_machine :status, initial: :new do

    after_transition :on => :pending do |obj|
      if obj.check_black_list
        obj.assign
      else
        obj.cancel_reason = "This costomer in black list"
        obj.cancel
      end
    end

    before_transition :on => :canceled_by_customer do |obj|
      obj.cancel_reason = "Customer cencel order"
    end
    event :in_progress do
      transition :assign => :in_progress
    end

    event :caceled_by_customer do
      transition :in_progress => :cancel
    end

    event :complete do
      transition :in_progress => :complete
    end

    event :pending do
      transition :new => :pending
    end

    event :assign do
      transition :pending => :assign
    end

    event :cancel do
      transition :pending => :cancel
    end

  end
  def check_black_list
    unless ['bil', "jhon", " fil"].include?(self.name)
      return true
    else
      return false
    end
  end
end
