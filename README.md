# Gauss-Jacques Method

Method to obtain modular inverse matrices sized n x n considering computational efficiency and applications in symmetric cryptography. It is also discussed about some phenomenon in linear arithmetic spaces and some theorems found. This work is an important contribution to knowledge and direct appliance in data security problems in computer science context. Based on research and experiments conducted, it was observed that this method is precise, defined and finite, so it can be programmed in any computer language.

## Example

```matlab
n = 10; % dimesion of matrix
K = randi(100,n,n); % it define a square matrix
m = 89; % a prime number   
[InvMod, I] = gauss_jacques(K, m); 
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Intellectual author
* **Fausto Abraham Jacques-García** - *jacques@uaq.edu.mx* - [Gauss-Jacques Method](https://www.researchgate.net/publication/327895519_The_proposed_Gauss-Jacques_method_to_obtain_modular_inverse_matrices_variable_sized_without_a_theoretical_limit)

## Contributors

* **Adolfo Solis-Rosas** - *adolfo2794@gmail.com*
* **Aldo Valencia-Palma** - *aldo.valencia.palma@gmail.com*
* **Vania Hinojosa-Navarro** - *vania.hinojosa@gmail.com*
* **Sergio Carrillo-Paredes** - *s.carrilloparedes@gmail.com*
* **Daniel Cantón-Enriquez** - *daniel_ce92@outlook.com*

## License
This project is licensed under the MIT License
