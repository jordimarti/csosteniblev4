class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :create_mkuser

  def name
    [first_name, last_name].compact.join(' ')
  end

  def create_mkuser
    mkuser = MkUser.new
    mkuser.user_id = self.id
    mkuser.email = self.email
    mkuser.save
  end

  has_many :cas_practics
  has_many :producte_dapcons_usuari
  has_many :mk_products
  has_many :mk_missatges
  has_one :mk_user
  
end
