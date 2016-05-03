require 'gchart'

data_array_1 = [1, 4, 3, 5, 9]
data_array_2 = [4, 2, 10, 4, 7]

bar_chart = Gchart.new(
            :type => 'bar',
            :size => '600x400',
            :bar_colors => ['000000', '0088FF'],
            :title => "My Title",
            :bg => 'EFEFEF',
            :legend => ['first data set label', 'second data set label'],
            :data => [data_array_1, data_array_2],
            :filename => 'images/bar_chart.png',
            :stacked => false,
            :legend_position => 'bottom',
            :axis_with_labels => [['x'], ['y']],
            :max_value => 15,
            :min_value => 0,
            :axis_labels => [["A|B|C|D|E"]],
            )

bar_chart.file

require 'gruff'
g = Gruff::Line.new
g.title = 'Wow!  Look at this!'
g.labels = { 0 => '5/6', 1 => '5/15', 2 => '5/24', 3 => '5/30', 4 => '6/4',
             5 => '6/12', 6 => '6/21', 7 => '6/28' }
g.data :Jimmy, [25, 36, 86, 39, 25, 31, 79, 88]
g.data :Charles, [80, 54, 67, 54, 68, 70, 90, 95]
g.data :Julie, [22, 29, 35, 38, 36, 40, 46, 57]
g.data :Jane, [95, 95, 95, 90, 85, 80, 88, 100]
g.data :Philip, [90, 34, 23, 12, 78, 89, 98, 88]
g.data :Arthur, [5, 10, 13, 11, 6, 16, 22, 32]
g.write('exciting.png') 