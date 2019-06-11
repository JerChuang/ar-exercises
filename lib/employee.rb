class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 39, less_than:201 }

  before_save :random_password
  private 

  def random_password
    self.password = ('a'..'z').to_a.shuffle[0,8].join
  end  
end


# table.references :store
# table.column :first_name, :string
# table.column :last_name, :string
# table.column :hourly_rate, :integer
# table.timestamps null: false
