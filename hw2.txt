EP_1

http://162.55.220.72:5005/first


1. Отправить запрос
pm.sendRequest("https://postman-echo.com/get", function (err, response) {
    console.log(response.json());
});

2. Статус код "200"
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

3. Проверить, что в body приходит правильный string
pm.test("is it right string", function () {
    pm.expect(pm.response.text()).to.include("first");
});

======================================================

EP_2

http://162.55.220.72:5005/user_info_3

1. Отправить запрос
pm.sendRequest("https://postman-echo.com/get", function (err, response) {
    console.log(response.json());
});

2. Статус код "200"
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

3. Спарсить respons body в json
var data_from_res = pm.response.json();

4. Проверить, что name в ответе равно name s request (name вбить руками)
pm.test("user_name", function () {
    pm.expect(data_from_res.name).to.eql("wlad");
});

5. Проверить, что age в ответе равно age s request (age вбить руками)
pm.test("user_age", function () {
    pm.expect(data_from_res.age).to.eql("22");
});

6. Проверить, что salary в ответе равно salary s request (salary вбить руками)
pm.test("user_salary", function () {
    pm.expect(data_from_res.salary).to.eql(500);
});

7. Спарсить request
var data_from_req = request.data;

8. Проверить, что name в ответе равно name s request (name забрать из request)
pm.test("user_name2", function () {
    pm.expect(data_from_req.name).to.eql(data_from_res.name);
});

9. Проверить, что age в ответе равно age s request (age забрать из request)
pm.test("user_age2", function () {
    pm.expect(data_from_req.age).to.eql(data_from_res.age);
});

10. Проверить, что salary в ответе равно salary s request (salary забрать из request)
pm.test("user_salary2", function () {
    pm.expect(+data_from_req.salary).to.eql(data_from_res.salary);
});

11. Вывести в консоль параметр family из response
console.log(data_from_res.family)

12. Проверить, что u_salary_1_5_year в ответе равно salary*4 (salary забрать из request)
pm.test("1.5 years salary", function () {
    pm.expect(data_from_res.family["u_salary_1_5_year"]).to.eql(+data_from_req.salary*4);
});

======================

EP_3

http://162.55.220.72:5005/object_info_3

1. Отправить запрос
pm.sendRequest("https://postman-echo.com/get", function (err, response) {
    console.log(response.json());
});

2. Статус код "200"
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

3. Спарсить respons body в json
var data_from_res = pm.response.json();

4. Спарсить request
var name_req = pm.request.url.query.get('name');
var age_req = pm.request.url.query.get('age');
var salary_req = pm.request.url.query.get("salary");

5. Проверить, что name в ответе равно name s request (name забрать из request)
pm.test("url_name", function () {
    pm.expect(name_req).to.eql(data_from_res.name);
});

6. Проверить, что age в ответе равно age s request (age забрать из request)
pm.test("url_age", function () {
    pm.expect(age_req).to.eql(data_from_res.age);
});

7. Проверить, что salary в ответе равно salary s request (salary забрать из request)
pm.test("url_salary", function () {
    pm.expect(+salary_req).to.eql(data_from_res.salary);
});

8. Вывести в консоль параметр family из response
console.log(data_from_res.family);

9. Проверить, что у параметра dog есть параметры name
pm.test("does_it_has_name", function () {
    pm.expect(data_from_res.family.pets.dog).have.property('name');
});

10. Проверить, что у параметра dog есть параметры age
pm.test("how_old_is_it", function () {
    pm.expect(data_from_res.family.pets.dog).have.property('age');
});

11. Проверить, что параметр name имеет значение Luky
var dog = data_from_res.family.pets.dog;
pm.test("is_that_luky", function () {
    pm.expect(dog["name"]).to.eql("Luky");
});

12. Проверить, что параметр age имеет значение 4
var dog = data_from_res.family.pets.dog;
pm.test("how_old_is_u_dog", function () {
    pm.expect(dog["age"]).to.eql(4);
});

======================

EP_4

http://162.55.220.72:5005/object_info_4

1. Отправить запрос
pm.sendRequest("https://postman-echo.com/get", function (err, response) {
    console.log(response.json());
});

2. Статус код 200
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

3. Спарсить response body в json
var data_from_res = pm.response.json();

4. Спарсить request
var name_req = pm.request.url.query.get('name');
var age_req = +pm.request.url.query.get('age');
var salary_req = +pm.request.url.query.get('salary');

5. Проверить, что name в ответе равно name s request (name забрать из request)
pm.test("url_name", function () {
    pm.expect(name_req).to.eql(data_from_res.name);
});

6. Проверить, что age в ответе равно age из request (age забрать из request)
pm.test("url_age", function () {
    pm.expect(age_req).to.eql(data_from_res.age);
});

7. Вывести в консоль параметр salary из request
console.log(salary_req);

8. Вывести в консоль параметр salary из response
console.log(data_from_res.salary);

9. Вывести в консоль 0-й элемент параметра salary из response
console.log(data_from_res.salary[0]);

10. Вывести в консоль 1-й элемент параметра salary параметр salary из response
console.log(data_from_res.salary[1]);

11. Вывести в консоль 2-й элемент параметра salary параметр salary из response
console.log(data_from_res.salary[2]);

12. Проверить, что 0-й элемент параметра salary равен salary из request (salary забрать из request)
pm.test("check_salary_0", function () {
    pm.expect(data_from_res.salary[0]).to.eql(salary_req);
});

13. Проверить, что 1-й элемент параметра salary равен salary*2 из request (salary забрать из request)
pm.test("check_salary_1", function () {
    pm.expect(+data_from_res.salary[1]).to.eql(salary_req*2);
});

14. Проверить, что 2-й элемент параметра salary равен salary*3 из request (salary забрать из request)
pm.test("check_salary_2", function () {
    pm.expect(+data_from_res.salary[2]).to.eql(salary_req*3);
});

15. Создать в окружении переменную name
Open the Postman -> Tap on the [Environments] button -> Tap on the [+] button ->Rename new environment to the "User data" -> Add new variable "Name"

16. Создать в окружении переменную age
Open the Postman -> Tap on the [Environments] button -> Choose "User data" environment -> Add new variable "Name"

17. Создать в окружении переменную salary
Open the Postman -> Tap on the [Environments] button -> Choose "User data" environment -> Add new variable "Name"

18. Передать в окружение переменную name
var data = JSON.parse(responseBody);
pm.environment.set('name', data.name);

19. Передать в окружение переменную age
var data = JSON.parse(responseBody);
pm.environment.set('age', data.age);

20. Передать в окружение переменную salary
var data = JSON.parse(responseBody);
pm.environment.set('salary', data.salary);

21. Написать цикл который выведет в консоль по порядку элементы списка из параметра salary
var s0 = data_from_res.salary
s0.forEach(element => console.log(element));

