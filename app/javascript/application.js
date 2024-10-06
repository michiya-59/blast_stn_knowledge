// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails"
import OrgChart from 'orgchart';
import "controllers"
import "controllers/hamburger"
import jQuery from "jquery"
window.$ = window.jQuery = jQuery
import Rails from '@rails/ujs';
Rails.start();
import("jquery-ui-dist")
import "@fortawesome/fontawesome-free"
import "chartkick"
import "Chart.bundle"