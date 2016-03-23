json.array!(@staffs) do |staff|
  json.extract! staff, :id, :user_id, :name, :department_id, :id_card, :base_salary, :old_age_insurance, :medicare_insurance, :unemployed_insurance, :house_fund, :status
  json.url staff_url(staff, format: :json)
end
