// orderPizza.js

const orderPizza = () => {
  return new Promise((resolve, reject) => {
    if (orderPizza) {
      resolve('피자를 주문했습니다');
    } else {
      reject('피자를 주문하지 않았습니다');
    }
  });
};

orderPizza()
  .then((message) => console.log(message))
  .catch((error) => console.log(error));
