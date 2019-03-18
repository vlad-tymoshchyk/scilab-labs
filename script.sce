clear
// TASK 6 
m_one = [];
for i = 1:5
  for j = 1:5
    m_one(i,j) = (i - 1) * 5 + j;
  end
end
// disp(m_one, 'Matrix one:');

m_two = [];
for i = 1:5
  for j = 1:5
    m_two(i,j) = i * 5 + 4 + j;
  end
end
//disp(m_two, 'Matrix two:');

m_multiplied = m_one * m_two;
//disp(m_multiplied, 'Multiplied matrixes:');

el_gt_10 = [];
counter = 1;
for i = 1:5
  for j = 1:5
    if m_one(i,j) > 10 then
      el_gt_10(1, counter) = m_one(i,j);
      counter = counter + 1;
    end
  end
end
// disp(el_gt_10, 'Elements greater than 10:');

el_lt_25 = [];
counter = 1;
for i = 1:5
  for j = 1:5
    if m_one(i,j) < 25 then
      el_lt_25(1, counter) = m_two(i,j);
      counter = counter + 1;
    end
  end
end
// disp(el_lt_25, 'Elements less than 25:');

// summed_vectors 
concatenated_vectors = [el_gt_10, el_lt_25]
// disp(concatenated_vectors, 'Concatenated vectors:')

char_matrix_one = [
  'one', 'two', 'three';
  'four', 'five', 'six';
  'seven', 'eight', 'nine'
]
// disp(char_matrix_one, 'Char matrix one:')

char_matrix_two = [
  '_ein', '_zwei', '_drei';
  '_vier', '_funf', '_sechs';
  '_sieben', '_acht', '_neun'
]

added_matrix = char_matrix_one + char_matrix_two
// disp(added_matrix, 'Added char matrixes:')

array_task_9 = [];
a = 3
h = 0.5
for x = 0:10
  array_task_9($+1) = sin(a * x + h)
end
// disp(array_task_9, 'Tabulated function f(x)=sin(a*x+h):')

function [z] = custom_function(x,y)
  z = 1 + cos(x) * cos(y)
endfunction

x = [1:0.1:4*%pi]'
// plot(custom_function(x, 0))

y = 0:0.2:%pi
// plot3d(x,y,custom_function(x,y))


// linear equation
A = [
  1 -5 -8 1;
  3 1 -3 -5;
  1 0 -7 2;
  0 11 20 -9
];
B = [3; 1; -5; 2]
C = [1 2 -1; -2 -6 4; -1 -3 3]
D = [1; -2; 1]
E = C\D
X = A\B
disp(B*X')
// disp(A*X, 'Result:')
