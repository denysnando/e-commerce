module ApplicationHelper
  def money_format(number)
    number_to_currency(number, :unit => "$", :separator => ",", :delimiter => ".")
  end
end
