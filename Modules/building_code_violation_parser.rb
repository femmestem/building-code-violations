require "rubygems"
require "bundler/setup"
require "csv"
require "./modules/file_validation_helpers"
require "./modules/csv_pivot"

include FileValidator
include CSVPivotable

OUTPUT_HEADERS = [
  "violation_category",
  "violation_count",
  "earliest_violation_date",
  "lastest_violation_date"
]

def get_violations_per_category(file_path)
  vios_tbl = CSV.read(file_path, headers: true)
  output_csv_rows ||= [OUTPUT_HEADERS]

  grouped_vios_tbl = group_by_category(vios_tbl, 'violation_category')
  sorted_vios_tbl = group_sort_by(grouped_vios_tbl, 'violation_date')

  sorted_vios_tbl.each do |category, collection|
    output_csv_rows.push([
      category.to_s,
      collection.count,
      collection.first['violation_date'],
      collection.last['violation_date']
    ])
  end

  output_csv_rows
end


def output_to_csv(rows_array, filename)
  return unless valid?(filename)

  puts "Writing to '#{filename}'..."
  CSV.open("#{filename}", "w") do |csv|
    rows_array.each { |row| csv << row }
  end

  puts "Write finished."
  true
end
