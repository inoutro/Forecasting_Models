import pandas as pd
import numpy as np
import re
from datetime import datetime
start=datetime.now()

data_in = pd.read_excel("../raw_data/하차_12~17.xlsx")
print(data_in)
data_in = data_in.sort_values(by="날짜")


def station_2(one, two, name):
    sta_1 = data_in[data_in["역명"] == one]
    sta_2 = data_in[data_in["역명"] == two]
    sta_1 = sta_1.reset_index(drop=True)
    sta_2 = sta_2.reset_index(drop=True)

    sta_1_sub = sta_1[sta_1.columns[4:25]]
    sta_2_sub = sta_2[sta_2.columns[4:25]]
    sta = sta_1_sub + sta_2_sub

    sta_final = pd.concat([sta_1[sta_1.columns[0:4]], sta], axis=1)
    sta_final.to_csv(name + "_2012_2017_out2.csv", index=False)

def station_1(one, name):
    sta_1 = data_in[data_in["역명"] == one]
    sta_1 = sta_1.reset_index(drop=True)

    sta_1.to_csv(name + "_2012_2017_out2.csv", index=False)


station_2("왕십리(5)", "왕십리(208)", "wangsibli")
station_2("합정(238)", "합정(6)", "hapjung")
station_2("사당(226)", "사당(433)", "sadang")
station_2("건대입구(212)", "건대입구(7)", "konkuk")
station_2("시청(151)", "시청(201)", "sichung")
station_1("강남(222)", "gangnam")
station_1("신도림(234)", "sindorim")

station_1("안국(318)", "anguk")
station_1("종각(152)", "jongkak")
station_1("을지로입구(202)", "euljiro")
station_1("경복궁(317)", "gyungbok")
station_1("광화문", "gwanghwamoon")



print(datetime.now()-start)
