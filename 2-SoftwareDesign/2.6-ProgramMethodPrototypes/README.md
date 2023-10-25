### Прототипи методів програмних класів

| FR | Опис функціональної вимоги | Назва класу | Назва методу класу |
| --- | --- | --- | --- |
| FR1 | Користувач авторизується/реєструється | Користувач | авторизація() / реєстрація() |
| FR2 | Користувач створює заявку | Користувач | створитиЗаявку() |
| FR2.1 | Користувач заповнює/редагує заявку | Online-Заявка | змінитиЗаявку() |
| FR2.2 | Користувач переглядає заповнену заявку  | Online-Заявка  | переглянутиДані()  |
| FR3 | Користувач переглядає деталі медичної послуги | МедичнаПослуга | отриматиДеталіПослуги() |
| FR3.1 | Користувач здійснює оплату за медичну послугу | Оплата | здійснитиОплату() |
| FR3.2 | Система оплати перевіряє дані карти (якщо користувач вибрав оплату цим методом) | Оплата | перевіркаДанихКарти() |
| FR3.3 | Система обробляє помилку оплати (якщо виникла помилка) | Оплата | обробкаПомилокОплати() |