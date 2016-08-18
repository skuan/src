class Pant < ActiveRecord::Base



  #
  # -- START ActiveRecord Validations --
  #
  # These are ActiveRecord validations. We will learn about them later
  # today. For now, you can ignore them.
  #
  validates_presence_of :waist, :length, :price, :fabric, :fly, :cool
  validate :cool_is_boolean

  def cool_is_boolean
    if Pant.columns_hash["cool"].type == :string && cool.is_a?(TrueClass)
      errors.add(:cool, "boolean value can't be saved in String column")
    end
  end
  # -- END ActiveRecord Validations --
end