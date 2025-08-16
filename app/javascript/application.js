// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "popper" // importmapで指定した名前を記述
import "bootstrap"

// 画面読み込み時に呼び出される処理。
// Bootstrapのpopoverやtooltipはここに手動で初期化コードを記述しなければ動かない。
window.onload = function () {
    const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
    const popoverList = [...popoverTriggerList].map(d => new bootstrap.Popover(d))
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    const tooltipList = [...tooltipTriggerList].map(d => new bootstrap.Tooltip(d))
}