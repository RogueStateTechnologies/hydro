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
  validates :password, :password_confirmation, presence: true
  validates :password, :password_confirmation, length: { in: 8..31 }

  has_many :plants
end
