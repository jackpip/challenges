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

  def blur(distance)
    if distance <= 0
      for i in 0..@row-1
        for j in 0..@col-1
          if @array[i][j] == 2
            @array[i][j] = 1
          end
        end
      end
      return
    end
    pixels_to_blur = []
    @row = 0
    @array.each do |a|
      @col = 0
      a.each do |b|
        if b == 1
          pixels_to_blur << [@row, @col]
        end
        @col += 1
      end
      @row += 1
    end
    pixels_to_blur.each do |pixel|
      for i in 0..@row-1
        for j in 0..@col-1
          if (pixel[0]-i).abs + (pixel[1]-j).abs == distance
            @array[i][j] = 2
          end
        end
      end
    end
    self.blur(distance-1)
  end
end

image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 1]
])
image.output_image
puts ""
image.blur(5)
image.output_image
