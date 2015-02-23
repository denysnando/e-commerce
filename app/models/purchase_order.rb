class PurchaseOrder < ActiveRecord::Base
  belongs_to :user, :inverse_of => :purchase_order
  belongs_to :purchase_order_status, :inverse_of => :purchase_order
  has_many :purchase_order_items, :inverse_of => :purchase_order
  has_many :products, :through => :purchase_order_items

  accepts_nested_attributes_for :purchase_order_items, :allow_destroy => true

  before_save :status_purchase_order!
  before_save :update_total

  state_machine :state, initial: :aberto do

    event :read do
      transition unread: :read
    end

    event :archive do
      transition any => :archived
    end

    after_transition to: :read do |message|
      message.read_at = Time.current
    end

    after_transition to: :archive do |message|
      message.archived_at = Time.current
    end
  end

  private
  def status_purchase_order!
    self.purchase_order_status_id = 1
  end

  def update_total
    self.total_price = purchase_order_items.map(&:calc_sub_total).sum
  end

  rails_admin do
    navigation_label 'Financeiro'
    list do
      field :id
      field :user
      field :created_at do
        strftime_format "%d-%m-%Y %H:%M"
      end
      field :total_price
   end
   edit do
    field :user
    field :purchase_order_items
    field :total_price
  end
end
end
