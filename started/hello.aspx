<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hello.aspx.cs" Inherits="started.hello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript" src="scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="scripts/vue_2.5.17.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            new Vue({
                el: '#app',
                data: {
                    message: 'Hello Vue.js!',
                    Foodchecked: [],
                    checked: false,
                    newTodo: '',
                    todos: [
                      { text: 'Mink' },
                      { text: 'Luckystareiei' },
                      { text: 'Maruko' }
                    ]
                },
                methods: {
                    //say: function (msg) {
                    //    alert(msg)
                    //},
                    addTodo: function () {
                        var text = this.newTodo.trim()
                       
                        if (text) {
                            this.todos.push({ text: text })
                            this.newTodo = ''
                        }
                    }
                    

                }
            })


        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
     <div id="app">
          <input v-model="message">
        {{ message }} 

          <p>textbox</p>
            <input v-model="newTodo" v-on:keyup.enter="addTodo">
              <ul>
                <li v-for="todo in todos">
                  <span>{{ todo.text }}</span>

                </li>
              </ul>
          <%-- <button v-on:click="say('hi')">Say Hi</button>
            <button v-on:click="say('what')">Say What</button>--%>
          <p>checkbox</p>
         <input type="checkbox" id="checkbox" v-model="checked">
        <label for="checkbox">{{ checked }}</label>
         <p>checkbox list</p>
          <input type="checkbox" id="Donut" value="Donut" v-model="Foodchecked">
        <label for="Donut">Donut</label>
          <input type="checkbox" id="Pizza" value="Pizza" v-model="Foodchecked">
        <label for="Pizza">Pizza</label>
          <input type="checkbox" id="Burger" value="Burger" v-model="Foodchecked">
        <label for="Burger">Burger</label>
          <input type="checkbox" id="Pepsi" value="Pepsi" v-model="Foodchecked">
        <label for="Pepsi">Pepsi</label>

          <label>{{ Foodchecked | json }}</label>
    </div>



    </form>
</body>
</html>
