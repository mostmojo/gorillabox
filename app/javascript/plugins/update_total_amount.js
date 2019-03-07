const update_total_amount = () => {

  const hiddenPrice = document.getElementById('hidden_price')
  if (hiddenPrice) {
    let boxPrice = hiddenPrice.innerHTML
  }
  const quantityBar = document.getElementById("subscription_quantity")

  if (quantityBar) {
    quantityBar.addEventListener('blur', (event) => {
      const quantity = event.srcElement.valueAsNumber;
      const total = (boxPrice * quantity)
      if (isNaN(total)) {
        document.getElementById('total').innerHTML = `£0`;
      } else {
        document.getElementById('total').innerHTML = `£${total}`;
      }

    })
    
  }
};

export { update_total_amount };

