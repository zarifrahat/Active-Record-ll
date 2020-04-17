# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  answer_choice_id :integer          not null
#  user_id          :integer          not null
#
class Response < ApplicationRecord
    belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :answer_choice_id

    belongs_to :respondent,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id
end
