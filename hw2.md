**EP_1**

http://162.55.220.72:5005/first


1. Отправить запрос<br> **->** `pm.sendRequest("https://postman-echo.com/get", function (err, response) {`<br>                     `console.log(response.json());`<br>
`});`

2. Статус код "200"<br> **->** `pm.test("Status code is 200", function () {`<br>
`pm.response.to.have.status(200);`<br>
`});`

3. Проверить, что в body приходит правильный string<br> **->** `pm.test("is it right string", function () {`<br>
`pm.expect(pm.response.text()).to.include("first");`<br>
`});`

======================================================

**EP_2**

http://162.55.220.72:5005/user_info_3

1. Отправить запрос<br> **->** `pm.sendRequest("https://postman-echo.com/get", function (err, response) {`<br>
`console.log(response.json());`<br>
`});`

2. Статус код "200"<br> **->** `pm.test("Status code is 200", function () {`<br>
`pm.response.to.have.status(200);`<br>
`});`

3. Спарсить respons body в json<br> **->** `var data_from_res = pm.response.json();`

4. Проверить, что name в ответе равно name s request (name вбить руками)<br> **->** `pm.test("user_name", function () {`<br>
`pm.expect(data_from_res.name).to.eql("wlad");`<br>
`});`

5. Проверить, что age в ответе равно age s request (age вбить руками)<br> **->** `pm.test("user_age", function () {`<br>
`pm.expect(data_from_res.age).to.eql("22");`<br>
`});`

6. Проверить, что salary в ответе равно salary s request (salary вбить руками)<br> **->** `pm.test("user_salary", function () {`<br>
`pm.expect(data_from_res.salary).to.eql(500);`<br>
`});`

7. Спарсить request<br> **->** `var data_from_req = request.data;`

8. Проверить, что name в ответе равно name s request (name забрать из request)<br> **->** `pm.test("user_name2", function () {`<br>
`pm.expect(data_from_req.name).to.eql(data_from_res.name);`<br>
`});`

9. Проверить, что age в ответе равно age s request (age забрать из request)<br> **->** `pm.test("user_age2", function () {`<br>
`pm.expect(data_from_req.age).to.eql(data_from_res.age);`<br>
`});`

10. Проверить, что salary в ответе равно salary s request (salary забрать из request)<br> **->** `pm.test("user_salary2", function () {`<br>
`pm.expect(+data_from_req.salary).to.eql(data_from_res.salary);`<br>
`});`

11. Вывести в консоль параметр family из response<br> **->** `console.log(data_from_res.family);`

12. Проверить, что u_salary_1_5_year в ответе равно salary*4 (salary забрать из request)<br> **->** `pm.test("1.5 years salary",function () {`<br>
`pm.expect(data_from_res.family["u_salary_1_5_year"]).to.eql(+data_from_req.salary*4);`<br>
`});`

======================

**EP_3**

http://162.55.220.72:5005/object_info_3

1. Отправить запрос<br> **->** `pm.sendRequest("https://postman-echo.com/get", function (err, response) {`<br>
`console.log(response.json());`<br>
`});`

2. Статус код "200"<br> **->** `pm.test("Status code is 200", function () {`<br>
`pm.response.to.have.status(200);`<br>
`});`

3. Спарсить respons body в json<br> **->** `var data_from_res = pm.response.json();`

4. Спарсить request<br> **->** `var name_req = pm.request.url.query.get('name');`<br>
`var age_req = pm.request.url.query.get('age');`<br>
`var salary_req = pm.request.url.query.get("salary");`

5. Проверить, что name в ответе равно name s request (name забрать из request)<br> **->** `pm.test("url_name", function () {`<br>
`pm.expect(name_req).to.eql(data_from_res.name);`<br>
`});`

6. Проверить, что age в ответе равно age s request (age забрать из request)<br> **->** `pm.test("url_age", function () {`<br>
`pm.expect(age_req).to.eql(data_from_res.age);`<br>
`});`

7. Проверить, что salary в ответе равно salary s request (salary забрать из request)<br> **->** `pm.test("url_salary", function () {`<br>
`pm.expect(+salary_req).to.eql(data_from_res.salary);`<br>
`});`

8. Вывести в консоль параметр family из response<br> **->** `console.log(data_from_res.family);`

9. Проверить, что у параметра dog есть параметры name<br> **->** `pm.test("does_it_has_name", function () {`<br>
`pm.expect(data_from_res.family.pets.dog).have.property('name');`<br>
`});`

10. Проверить, что у параметра dog есть параметры age<br> **->** `pm.test("how_old_is_it", function () {`<br>
`pm.expect(data_from_res.family.pets.dog).have.property('age');`<br>
`});`

11. Проверить, что параметр name имеет значение Luky<br> **->** `var dog = data_from_res.family.pets.dog;`<br>
`pm.test("is_that_luky", function () {`<br>
`pm.expect(dog["name"]).to.eql("Luky");`<br>
`});`

12. Проверить, что параметр age имеет значение 4<br> **->** `var dog = data_from_res.family.pets.dog;`<br>
`pm.test("how_old_is_u_dog", function () {`<br>
`pm.expect(dog["age"]).to.eql(4);`<br>
`});`

======================

**EP_4**

http://162.55.220.72:5005/object_info_4

1. Отправить запрос<br> **->** `pm.sendRequest("https://postman-echo.com/get", function (err, response) {`<br>
`console.log(response.json());`<br>
`});`

2. Статус код 200<br> **->** `pm.test("Status code is 200", function () {`<br>
`pm.response.to.have.status(200);`<br>
`});`

3. Спарсить response body в json<br> **->** `var data_from_res = pm.response.json();`

4. Спарсить request<br> **->** `var name_req = pm.request.url.query.get('name');`<br>
`var age_req = +pm.request.url.query.get('age');`<br>
`var salary_req = +pm.request.url.query.get('salary');`

5. Проверить, что name в ответе равно name s request (name забрать из request)<br> **->** `pm.test("url_name", function () {`<br>
`pm.expect(name_req).to.eql(data_from_res.name);`<br>
`});`

6. Проверить, что age в ответе равно age из request (age забрать из request)<br> **->** `pm.test("url_age", function () {`<br>
`pm.expect(age_req).to.eql(data_from_res.age);`<br>
`});`

7. Вывести в консоль параметр salary из request<br> **->** `console.log(salary_req);`

8. Вывести в консоль параметр salary из response<br> **->** `console.log(data_from_res.salary);`

9. Вывести в консоль 0-й элемент параметра salary из response<br> **->** `console.log(data_from_res.salary[0]);`

10. Вывести в консоль 1-й элемент параметра salary параметр salary из response<br> **->** `console.log(data_from_res.salary[1]);`

11. Вывести в консоль 2-й элемент параметра salary параметр salary из response<br> **->** `console.log(data_from_res.salary[2]);`

12. Проверить, что 0-й элемент параметра salary равен salary из request (salary забрать из request)<br> **->** `pm.test("check_salary_0", function () {`<br>
`pm.expect(data_from_res.salary[0]).to.eql(salary_req);`<br>
`});`

13. Проверить, что 1-й элемент параметра salary равен salary*2 из request (salary забрать из request)<br> **->** `pm.test("check_salary_1", function () {`<br>
`pm.expect(+data_from_res.salary[1]).to.eql(salary_req*2);`<br>
`});`

14. Проверить, что 2-й элемент параметра salary равен salary*3 из request (salary забрать из request)<br> **->** `pm.test("check_salary_2", function () {`<br>
`pm.expect(+data_from_res.salary[2]).to.eql(salary_req*3);`<br>
`});`

15. Создать в окружении переменную name<br> **->** `Open the Postman -> Tap on the [Environments] button -> Tap on the [+] button -> Rename new environment to the "User data" -> Add new variable "name"`

16. Создать в окружении переменную age<br> **->** `Open the Postman -> Tap on the [Environments] button -> Choose "User data" environment -> Add new variable "age"`

17. Создать в окружении переменную salary<br> **->** `Open the Postman -> Tap on the [Environments] button -> Choose "User data" environment -> Add new variable "salary"`

18. Передать в окружение переменную name<br> **->** `var data = JSON.parse(responseBody);`<br>
`pm.environment.set('name', data.name);`

19. Передать в окружение переменную age<br> **->** `var data = JSON.parse(responseBody);`<br>
`pm.environment.set('age', data.age);`

20. Передать в окружение переменную salary<br> **->** `var data = JSON.parse(responseBody);`<br>
`pm.environment.set('salary', data.salary);`

21. Написать цикл который выведет в консоль по порядку элементы списка из параметра salary<br> **->** `var s0 = data_from_res.salary`<br>
`s0.forEach(element => console.log(element));`

