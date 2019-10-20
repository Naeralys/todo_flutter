using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using backend.Models;
using Microsoft.AspNetCore.Mvc;

namespace backend.Controllers
{
    [ApiController]
    [Route("api/TodoList")]
    public class TodoListController : ControllerBase
    {
        private static readonly List<TodoItem> todos = new List<TodoItem>();

        [HttpGet]
        public List<TodoItem> Get() => todos;

        [HttpGet("{index}")]
        public TodoItem GetFirst(int index) => todos[index];

        [HttpPost]
        public void Add([FromBody] TodoItem todo) => todos.Add(todo);

        [HttpDelete("{todo}")]
        public string Remove(string todo) {
            TodoItem temp = null;
            todos.ForEach((TodoItem obj) =>
            {
                if(obj.Name == todo)
                    temp = obj;
            });
            if (temp != null)
            {
                todos.Remove(temp);
                return temp.Name + " removed";
            }
            return "No item found";
        }
    }
}
