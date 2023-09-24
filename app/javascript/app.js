window.onload = function() {
  const spinner = document.getElementById('loading');
  // Add .loaded to .loading
  spinner.classList.add('loaded');
}

document.addEventListener('DOMContentLoaded', function() {
  let searchButton = document.getElementById("submit-button");
  let loadingSpinner = document.getElementById("loading");

  searchButton.addEventListener('click', function() {
    // loadingSpinnerの中のloadedというクラスを削除
    loadingSpinner.classList.remove('loaded');
  });
});
