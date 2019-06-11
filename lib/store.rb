class MyValidator < ActiveModel::Validator
  def validate(record)
    unless (record.mens_apparel || record.womens_apparel)
      record.errors[:womens_apparel] << "Needs to at least carry Men's or Women's apparel"
      record.errors[:mens_apparel] << "Needs to at least carry Men's or Women's apparel"
    end
  end
end


class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }, presence: true
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validates_with MyValidator

  before_destroy :empty_store
  private 

  def empty_store
    if self.employees.count > 0
      throw(:abort)
    else 
      true
    end
  end  
end


# t.column :name, :string
# t.column :annual_revenue, :integer
# t.column :mens_apparel, :boolean
# t.column :womens_apparel, :boolean
# t.timestamps null: false