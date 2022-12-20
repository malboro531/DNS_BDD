# language: ru
# encoding: utf-8
Функция: Электрические плиты

  Я как посетитель сайта ДНС хочу иметь возможность
  - переходить по страницам различных категорий бытовой техники
  - видеть актуальную информацию о количестве оставшейся бытовой техники

  Это позволит мне легко ориентироваться на сайте и получать общую информацию о количестве техники.

  Предыстория:
    Дано Открыта страница Стартовая страница сайта DNS
#    И Закрыть окно подтверждения города

  @case1
  Сценарий: Стартовая страница сайта DNS
    Когда Навести курсор на ссылку Бытовая техника
    И Навести курсор на ссылку Плиты и печи
#    Повторно:
    Когда Навести курсор на ссылку Бытовая техника
    Тогда Проверить, что отображаются ссылки: Встраиваемая техника, Техника для кухни, Техника для дома
      | Техника для дома     |
      | Техника для кухни    |
      | Встраиваемая техника |

  @case2
  Сценарий: Страница "Плиты и печи"
    Когда Навести курсор на ссылку Бытовая техника
    Тогда Выполнен переход на страницу Плиты и печи

  @case3
  Сценарий: Страница "Электрические плиты"
    Когда Навести курсор на ссылку Бытовая техника
    Тогда Выполнен переход на страницу Плиты и печи
    Дано Открыта страница Плиты и печи
    Когда Выполнен переход на страницу Плиты электрические
    Дано Открыта страница Электрические плиты
    Тогда Проверить, что в тексте Плиты электрические [количество] товаров количество товаров больше 100