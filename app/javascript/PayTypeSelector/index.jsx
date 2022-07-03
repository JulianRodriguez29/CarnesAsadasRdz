import React from 'react'

import NoPayType from './NoPayType';
import CreditCardPayType from './CreditCardPayType';
import CashPayType from './CashPayType';

class PayTypeSelector extends React.Component {
  constructor(props) {
    super(props);
    this.onPayTypeSelected = this.onPayTypeSelected.bind(this);
    this.state = { selectedPayType: null };
  }
  onPayTypeSelected(event) {
      this.setState({ selectedPayType: event.target.value });
  }
  render() {
    let PayTypeCustomComponent = NoPayType;
if (this.state.selectedPayType == "Credit card") {
PayTypeCustomComponent = CreditCardPayType;
} else if (this.state.selectedPayType == "Cash") {
PayTypeCustomComponent = CashPayType;
} 
return (
    <div>
      <div className="field">
      <label htmlFor="order_pay_type"> {I18n.t("orders.form.pay_type")} </label>
      <select id="order_pay_type" onChange={this.onPayTypeSelected}
          name="order[pay_type]">
          <option value="">{I18n.t("orders.form.pay_prompt_html")} </option>
          <option value="Cash">{I18n.t("orders.form.pay_types.cash")}</option>
          <option value="Credit card">{I18n.t("orders.form.pay_types.credit_card")}</option>        </select>
      </div>
      <PayTypeCustomComponent />
    </div>
    );
  }
}

export default PayTypeSelector