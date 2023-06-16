=-=-=<br>
**EP_1**<br>
=-=-=

http://162.55.220.72:5005/login<br>

1. Необходимо залогиниться(POST)
<br> **->** `var user_json = pm.response.json();`<br>
`var user_token = user_json.token`<br>
`pm.environment.set("auth_token", user_token);`

=-=-=<br>
**EP_2**<br>
=-=-=<br>

http://162.55.220.72:5005/user_info<br>
Request form: RAW JSON(POST)<br>

1. Статус код 200
<br> **->** `pm.test("Status code is 200", function () {`<br>
`pm.response.to.have.status(200);`<br>
`});`

2. Проверка структуры json в ответе<br> **->** `pm.test("JSON check",`<br>
`() => {pm.response.to.have.jsonSchema(myschema);})`

3. В ответе указаны коэффициенты умножения salary, напишите тесты по проверке правильности результата перемножения на коэффициент<br> **->** `let salary = data_from_res.person.u_name[1];`<br>
`let salarystart = salary;`<br>
`let salary6 = salary*2;`<br>
`let salary12 = salary*2.9;`<br>
`let salary1_5 = salary*4;`<br>

`if(salarystart==data_from_res.person.u_name[1]){`<br>
`console.log("salarystart is correct")`<br>
`}`<br>
`else {`<br>
`console.log("salarystart isn't correct")`<br>
`}`<br>
`if(salary6==data_from_res.qa_salary_after_6_months){`<br>
`console.log("6salary is correct")`<br>
`}`<br>
`else {`<br>
`console.log("6salary isn't correct")`<br>
`}`<br>
`if(salary12==data_from_res.qa_salary_after_12_months){`<br>
`console.log("12salary is correct")`<br>
`}`<br>
`else {`<br>
`console.log("12salary isn't correct")`<br>
`}`<br>
`if(salary1_5==data_from_res.person.u_salary_1_5_year){`<br>
`console.log("salary1_5 is correct")`<br>
`}`<br>
`else {`<br>
`console.log("salary1_5 isn't correct")`<br>
`}`

4. Достать значение из поля 'u_salary_1.5_year' и передать в поле salary запроса http://162.55.220.72:5005/get_test_user<br> **->** `var jsonData = JSON.parse(responseBody);`<br>
`postman.setEnvironmentVariable("salary", jsonData.person.u_salary_1_5_year);`

=-=-=<br>
**EP_3**<br>
=-=-=

http://162.55.220.72:5005/new_data<br>
Request form: form-data(POST)

1. Статус код 200
<br> **->** `pm.test("Status code is 200", function () {`<br>
`pm.response.to.have.status(200);`<br>
`});`
2. Проверка структуры json в ответе
<br> **->** `pm.test("JSON check",`<br>
`() => {pm.response.to.have.jsonSchema(myschema);})`

3. В ответе указаны коэффициенты умножения salary, напишите тесты по проверке правильности результата перемножения на коэффициент.
<br> **->** `let salary = data_from_res.salary[0];`<br>
`let salary1 = salary*2;`<br>
`let salary2 = salary*3;`<br>

`if(salary1==data_from_res.salary[1]){`<br>
`console.log("1salary is correct")`<br>
`}`<br>
`else {`<br>
`console.log("1salary isn't correct")`<br>
`}`<br>
`if(salary2==data_from_res.salary[2]){`<br>
`console.log("2salary is correct")`<br>
`}`<br>
`else {`<br>
`console.log("2salary isn't correct")`<br>
`}

4. Проверить, что 2-й элемент массива salary больше 1-го и 0-го
<br> **->** `et salary00 = data_from_res.salary[0]`<br>
`let salary11 = data_from_res.salary[1]`<br>
`let salary22 = data_from_res.salary[2]`<br>

`if(salary22 > salary00){`<br>
`console.log("You're goddamn right")`<br>
`}`<br>
`else {`<br>
`console.log("Knock-knock")`<br>
`}`<br>
`if(salary22 > salary11){`<br>
`console.log("You're goddamn right")`<br>
`}`<br>
`else {`<br>
`console.log("Knock-knock")`<br>
`}`<br>

=-=-=<br>
**EP_4**<br>
=-=-=

http://162.55.220.72:5005/test_pet_info<br>
Request form: form-data(POST)

1. Статус код 200
<br> **->** `pm.test("Status code is 200", function () {`<br>
`pm.response.to.have.status(200);`<br>
`});`

2. Проверка структуры json в ответе
<br> **->** `pm.test("JSON check",`<br>
`() => {pm.response.to.have.jsonSchema(myschema);})`

3. В ответе указаны коэффициенты умножения weight, напишите тесты по проверке правильности результата перемножения на коэффициент
<br> **->** `let weight = data_from_req.weight;`<br>
`let daily_food = weight*0.012;`<br>
`let daily_sleep = weight*2.5;`<br>

`if(daily_food==data_from_res.daily_food){`<br>
`console.log("daily_food is correct")`<br>
`}`<br>
`else {`<br>
`console.log("daily_food isn't correct")`<br>
`}`<br>
`if(daily_sleep==data_from_res.daily_sleep){`<br>
`console.log("daily_sleep is correct")`<br>
`}`<br>
`else {`<br>
`console.log("daily_sleep isn't correct")`<br>
`}`

=-=-=<br>
**EP_5**<br>
=-=-=

http://162.55.220.72:5005/get_test_user<br>
Request form: form-data(POST)

1. Статус код 200
<br> **->** `pm.test("Status code is 200", function () {`<br>
`pm.response.to.have.status(200);`<br>
`});`

2. Проверка структуры json в ответе
<br> **->** `pm.test("JSON check",`<br>
`() => {pm.response.to.have.jsonSchema(myschema);})`

3. Проверить, что значение поля name = значению переменной name из окружения
<br> **->** `pm.test("Name check", function () {`<br>
`pm.expect(data_from_res.name).to.eql(pm.environment.get("name"));`<br>
`});`

4. Проверить, что значение поля age в ответе соответсвует отправленному в запросе значению поля age
<br> **->** `pm.test("age_check", function () {`<br>
`pm.expect(data_from_res.age).to.eql(data_from_req.age);`<br>
`});`

=-=-=<br>
**EP_6**<br>
=-=-=

http://162.55.220.72:5005/currency<br>
Request form: form-data(POST)

1. Можете взять любой объект из присланного списка, используйте js random.
В объекте возьмите Cur_ID и передать через окружение в следующий запрос.
<br> **->** `var id = data_from_res;`<br>
`var randomator = Math.floor(Math.random()*id.length);`<br>
`var random_id = id[randomator];`<br>
`console.log(random_id)`<br>

`pm.environment.set("cur_id", "35");`

=-=-=<br>
**EP_7**<br>
=-=-=

http://162.55.220.72:5005/curr_byn<br>
Request form: form-data(POST)

1. Статус код 200
<br> **->** `pm.test("Status code is 200", function () {`<br>
`pm.response.to.have.status(200);`<br>
`});`

2. Проверка структуры json в ответе
<br> **->** `pm.test("JSON check",`<br>
`() => {pm.response.to.have.jsonSchema(myschema);})`


