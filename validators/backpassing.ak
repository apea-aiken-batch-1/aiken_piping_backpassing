use aiken/collection/list
use cardano/transaction.{OutputReference, Transaction}

validator backpassing {
  mint(nonce: OutputReference, _, tx: Transaction) {
    let input <- list.any(tx.inputs)
    input.output_reference == nonce
  }

  else(_) {
    fail
  }
}
