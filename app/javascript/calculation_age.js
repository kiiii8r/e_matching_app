function calculation_age() {
  const birthYear = document.getElementById("user_birth_day_1i");
  const birthMonth = document.getElementById("user_birth_day_2i");
  const birthDay = document.getElementById("user_birth_day_3i");
  const resultAge = document.getElementById("result-age");
  const form = document.getElementById("first_registration");

  window.addEventListener("mouseover", () => {
    calculation();
  });

  form.addEventListener("submit", (e) => {
    e.preventDefault();

  const ageObj = `<input value=${resultAge.innerHTML} type='hidden' name='user[age]'>`;
  document.body.insertAdjacentHTML("beforeend", ageObj);

  document.getElementById("first_registration").submit();
  document.getElementById("first_registration").reset();
  });

  function calculation(){
    if (birthYear.value && birthMonth.value && birthDay.value){
      const birthday = birthYear.value + (0 + birthMonth.value).slice(-2) + (0 + birthDay.value).slice(-2);
      const today = new Date();
      const date = ( today.getFullYear() * 10000 ) + (( today.getMonth() + 1 ) * 100 ) + today.getDate() ;
      const age = ( Math.floor(( date - birthday ) / 10000 ));
      resultAge.textContent = age;
    } else {
      resultAge.textContent = '';
    };
  };
};

window.addEventListener("load", calculation_age);
