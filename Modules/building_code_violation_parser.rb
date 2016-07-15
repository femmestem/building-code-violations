require "rubygems"
require "bundler/setup"
require "csv"

OUTPUT_HEADERS = [
  "violation_category",
  "violation_count",
  "earliest_violation_date",
  "lastest_violation_date"
]

def get_violations_per_category(file_path)
  vios_tbl = CSV.read(file_path, headers: true)
end


def output_to_csv(rows_array, filename)

  puts "Writing to '#{filename}'..."
  CSV.open("#{filename}", "w") do |csv|
    rows_array.each { |row| csv << row }
  end

  puts "Write finished."
  true
end
