# aiken_piping_backpassing

This project compares [`without`](./validators/without.ak) piping/backpassing code, vs:

- with [`piping`](./validators/piping.ak)
  ![Screenshot from 2024-11-21 11-17-50](https://github.com/user-attachments/assets/4d70a866-4061-4d08-9b85-6ddbe508ecfa)

- with [`backpassing`](./validators/backpassing.ak)
  ![Screenshot from 2024-11-21 11-17-54](https://github.com/user-attachments/assets/4c7885ea-311e-424f-87c6-624cc2fa0cfa)

Run `aiken b` and notice that all the script hashes generated are the same, proving that it's all just syntactic sugar.
