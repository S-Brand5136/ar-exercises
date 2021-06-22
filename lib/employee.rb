class Employee < ActiveRecord::Base
  belongs_to :store
  after_create :gen_password
  validate :employees_must_have_first_name,
  :employees_must_have_last_name, :employees_set_rate, :employees_must_have_store_id

  # Validations

  def employees_must_have_first_name
    if (!first_name)
      errors.add(:name, "can't be null")
    end
  end

  def employees_must_have_last_name
    if (!last_name)
      errors.add(:name, "can't be null")
    end
  end

  def employees_set_rate
    if(hourly_rate < 40 || hourly_rate > 200)
      errors.add(:hourly_rate, "can't be lower than 40 or higher than 200")
    end
  end

  def employees_must_have_store_id
    if(!store)
      errors.add(:store, "employees must belong to a store")
    end
  end

  private

  # Callback methods

  def gen_password
    self.password = rand(36**8).to_s(36)
  end

end
