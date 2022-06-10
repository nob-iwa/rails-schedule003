class Task < ApplicationRecord
    validates :title, presence: true
    validates :start_date, presence: true
    validate :end_after_today
      def end_after_today
          if end_date.present? && end_date < Date.today
            errors.add(:end_date, "は今日以降の日付で選択してください")
          end
      end
    validates :end_date, presence: true
end
