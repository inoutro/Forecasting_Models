# Forecasting_Models
Forecasting Models class Team Project - Seoul Subway Entry and exit person predict

본 프로젝트는 고려대학교 산업경영공학과 예측모델(IME554) 수업에서 진행한 프로젝트로 서울교통공사에서 제공되는 서울 지하철의 승하차인원 데이터를 사용하여 승하차 인원을 예측하는 시계열 예측모형을 구축하였다.

## 1. Data description – Data_preprocessing.py
서울 지하철의 승하차 인원을 분석하기 위하여 총 7개의 역을 선정하였고, 2012년 1월 부터 2017년 9월 까지의 데이터를 활용하였다. 각 데이터의 일별, 역별, 시간대별의 승하차 인원 정보를 활용하였다.

## 2. Model 1 – 3
- Model1_dummy_analysis.Rmd / Model2_trigonometric_analysis.Rmd / Model_arima_analysis.R
승하차 인원을 예측하기 위한 첫번째 모델 dummy model을 구축하였다. 더미화를 만든 기준은 승하차 인원의 가장 기본적인 패턴을 보이는 일주일을 기준으로 나누어서 데이터를 구축하였다. 두 번째로는 Trigonometric Model을 구축하였고, 총 두가지로 나누어서 진행하였다. 계절 패턴을 부여하기 위하여 첫 번째 모델이 더 단순한 모델을 사용하였고, 두 번째는 더 복잡한 계절 패턴을 주어 모델을 구축하였다. 마지막 세번째로는 Arima 모델을 적용하였다. 3개의 모델의 비교 결과는 dummy model이 가장 높은 성능을 보였다.

## 3. Heatmap_adjust.R
Arima 모델의 greedy search를 통하여 더 정확한 모델을 구축하기 위하여 greedy search를 진행하였고, greedy search 결과를 heatmap으로 나타낸 코드이다.


<p align="center">
  <img height="672" src = "https://raw.githubusercontent.com/inoutro/Forecasting_Models/master/Heatmap_plot.jpeg"/>
</p>
