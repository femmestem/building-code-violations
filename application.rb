require './modules/building_code_violation_parser.rb'

path_to_dataset = "./violations-2012.csv"
new_file = "violations_by_category.csv"

violations_by_category = get_violations_per_category(path_to_dataset)

# Log results out to console
violations_by_category.each { |row| p row}

# Log results to a new csv file
output_to_csv(violations_by_category, new_file)
