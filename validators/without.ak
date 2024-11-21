use aiken/collection/list
use cardano/transaction.{OutputReference, Transaction}

validator without {
  mint(nonce: OutputReference, _, tx: Transaction) {
    list.any(tx.inputs, fn(input) { input.output_reference == nonce })
  }

  else(_) {
    fail
  }
}
