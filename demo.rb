def is_valid_sudoku(board)
  rows = []
  columns = []
  grids = []

  # make each row into a hash to track for duplicated values
  board.each do |row|
    row_hash = Hash.new(0)
    row.each do |num|
      next if num == '.'

      row_hash[num] += 1
    end
    rows << row_hash
  end

  # check each row hash for duplicated value
  rows.each do |row|
    row.each do |_k, v|
      return false if v > 1
    end
  end
