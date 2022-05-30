# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, confirmation: true
  validates :email, :email_confirmation, presence: true
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

  validates :password, confirmation: true
  validates :password, format: { with: /(?=.*[a-z])(?=.*[A-Z])(?=.*\d)./ }
  validates :password, :password_confirmation, presence: true
  validates :password, :password_confirmation, length: { in: 8..33 }

  validates :user_name, presence: true
  validates :user_name, uniqueness: true
  validates :user_name, length: { in: 5..15 }

  validates :first_name, presence: true
  validates :first_name, format: { with: /[A-z]/ }

  validates :last_name, presence: true
  validates :last_name, format: { with: /[A-z]/ }

  has_many :plants
end
