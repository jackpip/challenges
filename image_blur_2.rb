class Image

  def initialize(array)
    @array = array
  end

  def output_image
    @array.each do |a|
      a.each do |b|
        print b
      end
      puts ""
    end
  end

  def blur
    pixels_to_blur = []
    @row = 0
    @array.each do |a|
      @col = 0
      a.each do |b|
        if @array[@row][@col] == 1
          pixels_to_blur << [@row-1, @col]
          pixels_to_blur << [@row+1, @col]
          pixels_to_blur << [@row, @col-1]
          pixels_to_blur << [@row, @col+1]
        end
        @col += 1
      end
      @row += 1
    end
    pixels_to_blur.each do |pixel|
      if pixel[0] >= 0 && pixel[0] < @row && pixel[1] >= 0 && pixel[1] < @col
        @array[pixel[0]][pixel[1]] = 1
      end
    end

  end
end

image = Image.new([
  [1, 0, 0, 1],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [1, 0, 0, 1]
])
image.output_image
puts ""
image.blur
image.output_image
