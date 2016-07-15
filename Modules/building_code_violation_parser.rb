require "rubygems"
require "bundler/setup"
require "csv"
require "./modules/csv_pivot"

include CSVPivotable

OUTPUT_HEADERS = [
  "violation_category",
  "violation_count",
  "earliest_violation_date",
  "lastest_violation_date"
]

def get_violations_per_category(file_path)
  vios_tbl = CSV.read(file_path, headers: true)

  grouped_vios_tbl = group_by_category(vios_tbl, 'violation_category')
  sorted_vios_tbl = group_sort_by(grouped_vios_tbl, 'violation_date')

end


def output_to_csv(rows_array, filename)

  puts "Writing to '#{filename}'..."
  CSV.open("#{filename}", "w") do |csv|
    rows_array.each { |row| csv << row }
  end

  puts "Write finished."
  true
end
