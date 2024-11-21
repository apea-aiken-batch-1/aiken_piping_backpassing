use aiken/collection/list
use cardano/transaction.{OutputReference, Transaction}

validator without {
  mint(nonce: OutputReference, _, tx: Transaction) {
    tx.inputs |> list.any(fn(input) { input.output_reference == nonce })
  }

  else(_) {
    fail
  }
}
