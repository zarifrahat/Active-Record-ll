# == Schema Information
#
# Table name: questions
#
#  id      :bigint           not null, primary key
#  text    :string           not null
#  poll_id :integer          not null
#
class Question< ApplicationRecord 

    has_many :answer_choices,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :question_id

    belongs_to :poll,
    class_name: :Poll,
    primary_key: :id,
    foreign_key: :poll_id
end
