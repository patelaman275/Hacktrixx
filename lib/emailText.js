let orderId = {{ table1.selectedRow.orderid }}
let refundAmount = {{ numberInput1.value}}

let openingBlurb = ' '
switch({{select1.value}}) {
  case 'toolate':
  openingBlurb = 'I am so sorry about your order being late.'
  break
  case 'didntlike':
  openingBlurb = 'I am so sorry that you did not like your order.'
  break
  case 'cancel':
  openingBlurb = 'I have fully cancelled your order as you requested.'
  break
}

return `Order ${orderId},\n` + ` ${openingBlurb} I went ahead and refunded ${refundAmount} to your card.` + `Best Wishes, Innoventures`