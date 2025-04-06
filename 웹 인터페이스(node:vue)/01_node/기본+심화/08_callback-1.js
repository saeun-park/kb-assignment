const order = (menu, display) => {
  console.log(menu + ' 주문 접수');

  setTimeout(() => {
    console.log('<<3초 경과 후>>');
    display(menu);
  }, 3000);
};

const display = (result) => {
  console.log(`${result} 완료!`);
};

order('아메리카노', display);
