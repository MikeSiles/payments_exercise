# Payments Exercise

Add in the ability to create payments for a given loan using a JSON API call. You should store the payment date and amount. Expose the outstanding balance for a given loan in the JSON vended for `LoansController#show` and `LoansController#index`. The outstanding balance should be calculated as the `funded_amount` minus all of the payment amounts.

A payment should not be able to be created that exceeds the outstanding balance of a loan. You should return validation errors if a payment can not be created. Expose endpoints for seeing all payments for a given loan as well as seeing an individual payment.

## Details and instructions

To view a loan and its payments, use the loan endpoint.

- View all loans: `GET /loans/`
- View one loan: `GET /loan/[:id]`

Payments are made using the payment endpoint specific to a loan

- Pay a loan: `POST /loan/[:loan_id]/payments`

Payments accept a JSON body with the field `"amount"`, which must not contain spaces or commas.
```
{
  "amount": "400000"
 }
 ```
 Errors are returned with a message, and details if available.
 ```
 {
  "message": "Unable to process request",
  "details": [
    "amount": "is not a number"
   ]
 }
```
