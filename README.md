# calculate GPA
GPA is grade point average, a way of turning multiple letter grades into a single score between -1 and 4.

https://www.edglossary.org/grade-point-average/

Here are the grades and their respective scores.

A = 4 points
A- = 3.7 points
B+ = 3.3 points
B = 3 points
B- = 2.7 points
C+ = 2.3 points
C = 2 points
C- = 1.7 points
D+ = 1.3 points
D = 1 point
D- = 0.7 points
E+ = 0.5 points
E = 0.2 points
E- = 0.1 points
F = 0 points
U = -1 points

Run the tests by using:

```shell
ruby gpa-test.ruby
```

You'll see a bunch of failing output.

```
---------- Andy ----------
❌ GPA: 'expected 4' but got '0'
❌ ANNOUNCEMENT: expected 'Andy scored an average of 4.0' but got '' 

---------- Beryl ----------
❌ GPA: 'expected 3' but got '0'
❌ ANNOUNCEMENT: expected 'Beryl scored an average of 3.0' but got '' 

---------- Chris ----------
❌ GPA: expected '2.5' but got '0'
❌ ANNOUNCEMENT: expected 'Chris scored an average of 2.5' but got '' 

---------- Dan ----------
❌ GPA: expected '3.5' but got '0'
❌ ANNOUNCEMENT: expected 'Dan scored an average of 3.5' but got '' 

---------- Emma ----------
❌ GPA: expected '2.4' but got '0'
❌ ANNOUNCEMENT: expected 'Beryl scored an average of 2.4' but got '' 

---------- Frida ----------
❌ GPA: expected '0.3' but got '0'
❌ ANNOUNCEMENT: expected 'Beryl scored an average of 0.3' but got '' 

---------- Gary ----------
❌ GPA: expected '0.4' but got '0'
❌ ANNOUNCEMENT: expected 'Beryl scored an average of 0.4' but got '' 
```

Now make it work! You only need to change the `Calculator` class to make the output "go green".
