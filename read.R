#
# Copyright 2019 Michael Erdmann
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
# modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software
# is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of
# the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
# OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#
# This frament is intenmded as a basis for a fast start in R.

#
fileName="data.txt"

# read a vector from the input file.
v=scan(fileName, character(), quote = "", sep="," )
input_length=length(v)

data_d1=v[seq(1,input_length, by=4)]
data_d2=v[seq(4,input_length+2, by=4)]

# data sources for d1 and d2
meas.d1 <- data.frame(
  tick = seq(4,input_length+2, by=4),
  d1 = data_d1
)

meas.d2 <- data.frame (
  tick = seq(4,input_length+2, by=4),
  d2 = data_d2
)
plot(meas.d1$d1, las=1, xlab="Measurements", ylab="Correlation Count", main="Correlation Count vs. Time", bty="n", cex=0.5, cex.axis=0.9, pch=19)

plot(meas.d1, las=1, xlab="Measurements", ylab="Correlation Count", main="Correlation Count vs. Time", bty="n", cex=0.5, cex.axis=0.9, pch=19)
