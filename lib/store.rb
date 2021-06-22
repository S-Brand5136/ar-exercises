class Store < ActiveRecord::Base
  has_many :employees
  validate :store_name_must_be_3_chars, :store_annual_revenue_is_integer_over_zero

  def store_name_must_be_3_chars
    if(name.length < 3) 
      errors.add(:name, "Name must be atleast three characters long")
    end
  end

  def store_annual_revenue_is_integer_over_zero
    if(!annual_revenue.is_a? Integer) 
      errors.add(:annual_revenue, "annual revenue must be an integer")
    end

    if(annual_revenue < 0) 
      errors.add(:annual_revenue, "must be greater than 0")
    end
  end

end
