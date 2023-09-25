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

let currentQuoteIndex = 0;
let quoteSlides = document.querySelectorAll('.quote-slide');

function showNextQuote() {
  // 現在の名言を非表示にする
  quoteSlides[currentQuoteIndex].style.display = 'none';
  // 次の名言のインデックスを計算する
  currentQuoteIndex = (currentQuoteIndex + 1) % quoteSlides.length;
  // 次の名言を表示する
  quoteSlides[currentQuoteIndex].style.display = 'block';
}

document.addEventListener('DOMContentLoaded', function() {
  let searchButton = document.getElementById("submit-button");
  let loadingSpinner = document.getElementById("loading");

  searchButton.addEventListener('click', function() {
    // ... 他のコード ...

    // 名言コンテナを表示する
    document.getElementById('quote-container').style.display = 'block';
    // 名言スライドショーを開始する
    showNextQuote();
    setInterval(showNextQuote, 3000);  // 3秒ごとに名言を切り替える
  });
});
