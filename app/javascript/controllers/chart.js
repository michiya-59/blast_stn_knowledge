// app/assets/javascripts/chart.js
import { Chart, registerables } from 'chart.js';
Chart.register(...registerables);

document.addEventListener('DOMContentLoaded', function () {
  const ctx = document.getElementById('myChart').getContext('2d');

  const myChart = new Chart(ctx, {
    type: 'bar',  // 棒グラフ
    data: {
      labels: ['収入', '支出', '予想支出'],  // グラフのラベル
      datasets: [{
        label: '金額（円）',
        data: [500000, 300000, 400000],  // 各ラベルに対応するデータ
        backgroundColor: [
          'rgba(75, 192, 192, 0.2)',  // 収入の背景色
          'rgba(255, 99, 132, 0.2)',  // 支出の背景色
          'rgba(255, 206, 86, 0.2)'   // 予想支出の背景色
        ],
        borderColor: [
          'rgba(75, 192, 192, 1)',  // 収入の枠線の色
          'rgba(255, 99, 132, 1)',  // 支出の枠線の色
          'rgba(255, 206, 86, 1)'   // 予想支出の枠線の色
        ],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true,
          ticks: {
            callback: function(value) {
              return '¥' + value.toLocaleString();  // Y軸の値を円で表示
            }
          }
        }
      }
    }
  });
});
