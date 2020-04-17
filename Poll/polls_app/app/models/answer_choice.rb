# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  text        :string           not null
#  question_id :integer          not null
#
class AnswerChoice < ApplicationRecord
    belongs_to :question,
    class_name: :Question,
    primary_key: :id,
    foreign_key: :question_id

    has_many :responses,
    class_name: :Response,
    primary_key: :id,
    foreign_key: :answer_choice_id
end
