import "bootstrap";

import { initAutocomplete } from "../plugins/init_autocomplete.js"
import { update_total_amount } from "../plugins/update_total_amount.js"
import { smooth_scroll_application } from "../plugins/smooth_scroll_application.js"
import { review_stars } from "../plugins/review_stars.js"
import { reviews_sliding } from "../plugins/reviews_sliding.js"
import 'mapbox-gl/dist/mapbox-gl.css'
import { init_mapbox } from '../plugins/init_mapbox.js'
// Profile tabs
import { openCity } from '../components/tabs';

// import "../plugins/flatpickr";
// import { flatpickr_cal } from '../plugins/flatpickr_cal.js'


init_mapbox();
initAutocomplete();
update_total_amount();
smooth_scroll_application();
review_stars();
reviews_sliding();