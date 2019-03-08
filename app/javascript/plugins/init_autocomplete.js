// app/javascript/plugins/init_autocomplete.js
import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('subscription_delivery_address');
  const billingAddressInput = document.getElementById('user_billing_address');
  const deliveryAddressInput = document.getElementById('user_delivery_address');
  if (addressInput) {
    places({ container: addressInput });
  }
  if (billingAddressInput) {
    places({ container: billingAddressInput });
  }
  if (deliveryAddressInput) {
    places({ container: deliveryAddressInput });
  }
};

export { initAutocomplete };
