import React from 'react'
class CashPayType extends React.Component {
render() {
return (
      <div className="field">
        <label htmlFor="order_acount_number">
          {I18n.t("orders.form.check_pay_type.account_number")}
          </label>
        <input type="text"
          name="order[account_number]"
          id="order_account_number" />
      </div>
    );
  }
}
export default CashPayType