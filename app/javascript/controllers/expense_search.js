document.addEventListener('DOMContentLoaded', function () {
  const monthSelect = document.getElementById('month-select');
  const monthForm = document.getElementById('month-form');

  monthSelect.addEventListener('change', function () {
    // セレクトボックスが変更されたときにフォームを送信
    monthForm.submit();
  });
});
