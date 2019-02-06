(function(){
  'use strict';

  // レッスン2two way data binding (to UI)
  // var vm = new Vue({
  //   el: '#app',
  //   data: {
  //     name: 'taguchi'
  //   }

  var vm = new Vue({
    el: '#app',
    data: {
      newItem: '',
      // todos: [{
      //   title: 'task1',
      //   isDone: false
      // }, {
      //   title: 'task2',
      //   isDone: false
      // }, {
      //   title: 'task3',
      //   isDone: ture
      // }]
      todos:[
        'task 1',
        'task 2',
        'task 3',
      ]
    },
    methods: {
      addItem: function() {
        // var item = {
        //   title: this.newItem,
        //   isDone: false
        // };
        this.todos.push(this.newItem);
        this.newItem = '';
      },
      deliteItem: function(index) {
        if (confirm('are you sure')) {
          this.todos.splice(index, 1);
        }
      }
    }
  });
})();
