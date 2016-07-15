module CSVPivotable
  def group_by_category(table, category_name)
    group_table = {}

    table.each do |row|
      category = row[category_name].to_sym
      group_table[category]||= []
      group_table[category] << row
    end

    group_table
  end

  def group_sort_by(table, column)
    table.each do |group, collection|
      table[group] = collection.sort_by { |header| header[column]}
    end

    table
  end

end
