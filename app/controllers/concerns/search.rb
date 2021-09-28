module Search
  def trips_search_query(search_keys)
    filtered_keys = filter_search_keys(search_keys)
    query = {}
    query.merge!(find_company_id(filtered_keys['company'])) if filtered_keys['company'].present?
    query.merge!(find_day_id(filtered_keys['day'])) if filtered_keys['day'].present?
    query.merge!(find_departure_city_id(filtered_keys['departure_city'])) if filtered_keys['departure_city'].present?
    query.merge!(find_arrival_city_id(filtered_keys['arrival_city'])) if filtered_keys['arrival_city'].present?
    query
  end

  private

  def find_company_id(company_name)
    company = Company.find_by_name(company_name)
    company.present? ? { company_id: company.id } : {}
  end

  def find_city_id(city_name)
    city = City.find_by_name(city_name)
    city.present? ? { city_id: city.id } : {}
  end

  def find_departure_city_id(city_name)
    city = City.find_by_name(city_name)
    city.present? ? { departure_city_id: city.id } : {}
  end

  def find_arrival_city_id(city_name)
    city = City.find_by_name(city_name)
    city.present? ? { arrival_city_id: city.id } : {}
  end

  def find_day_id(day_name)
    departure_day = DepartureDay.find_by(day: day_name)
    departure_day.present? ? { departure_day_id: departure_day.id } : {}
  end

  # remove all empty keys
  def filter_search_keys(search_keys)
    search_keys.delete_if { |_key, value| value.empty? }
  end
end
