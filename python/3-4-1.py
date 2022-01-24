from pandas_datareader import data as pdr
import yfinance as yf
yf.pdr_override() 

sec = pdr.get_data_yahoo('005930.KS', start='2018-05-04') 
msft = pdr.get_data_yahoo('MSFT', start='2018-05-04')

sec.head()

R1 = (sec.Close-sec.Close.shift(1)) / sec.Close.shift(1) * 100
R2 = (msft.Close-msft.Close.shift(1)) / msft.Close.shift(1) * 100

import matplotlib.pyplot as plt
plt.plot(sec.index, R1, 'b', label='Samsung')
plt.plot(msft.index, R2, 'r--', label='MSFT')

plt.legend(loc='best')
plt.show()
