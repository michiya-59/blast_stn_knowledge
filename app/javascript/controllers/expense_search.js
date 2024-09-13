document.addEventListener('DOMContentLoaded', function () {
  const monthSelect = document.getElementById('month-select');

  monthSelect.addEventListener('change', function () {
    const selectedMonth = monthSelect.value;

    // 非同期リクエストを送信
    fetch(`/expense/home/search?month=${selectedMonth}`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      }
    })
      .then(response => response.json())
      .then(data => {
        // 結果を表示
        document.getElementById('result').innerText = data.message;
      })
      .catch(error => console.error('Error:', error));
  });
});
