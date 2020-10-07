function age() {
  const birthYear = document.getElementById("user_birth_day_1i");
  const birthMonth = document.getElementById("user_birth_day_2i");
  const birthDay = document.getElementById("user_birth_day_3i");
  const resultAge = document.getElementById("result-age");

  birthYear.addEventListener("mouseout", () => {
    calculation_age();
  });
  birthMonth.addEventListener("mouseout", () => {
    calculation_age();
  });
  birthDay.addEventListener("mouseout", () => {
    calculation_age();
  });

  function calculation_age(){
    if (birthYear.value && birthMonth.value && birthDay.value){
      const birthday = birthYear.value + (0 + birthMonth.value).slice(-2) + (0 + birthDay.value).slice(-2);
      const today = new Date();
      const date = ( today.getFullYear() * 10000 ) + (( today.getMonth() + 1 ) * 100 ) + today.getDate() ;
      const age = ( Math.floor(( date - birthday ) / 10000 )) ;
      resultAge.textContent = age;
    };
  };
};

window.addEventListener("load", age);
